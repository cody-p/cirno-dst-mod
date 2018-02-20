-------------------------------
-- EXTERNAL ASSETS AND STUFF --
-------------------------------
local MakePlayerCharacter = require "prefabs/player_common"

local assets = {
    Asset("SCRIPT", "scripts/prefabs/player_common.lua")
}

local start_inv = {
    "ice",
    "ice",
    "ice",
    "icicle"
}

------------------------
-- STARTING INVENTORY --
------------------------

local function GetHeatFn(inst, observer)
    return TUNING.CIRNO.CIRNO_COLD_LEVEL
end

local function IsValidVictim(victim)
    return victim ~= nil and
        not ((victim:HasTag("prey") and not victim:HasTag("hostile")) or victim:HasTag("veggie") or
            victim:HasTag("structure") or
            victim:HasTag("wall") or
            victim:HasTag("companion")) and
        victim.components.health ~= nil and
        victim.components.combat ~= nil
end

local BATTLEBORN_STORE_TIME = 3
local BATTLEBORN_DECAY_TIME = 5
local BATTLEBORN_TRIGGER_THRESHOLD = 1

local function freezedeath(victim)
    victim.components.lootdropper.loot = nil
    victim.components.lootdropper:AddRandomLoot("wetgoop", 3)
    victim.components.lootdropper:AddRandomLoot("froglegs", 1)
    victim.components.lootdropper.numrandomloot = 1
    victim.components.freezable:SpawnShatterFX()
    victim.components.health:DoDelta(-999)
    victim.entity:Hide()
    victim.DynamicShadow:Enable(false)
end

local function onattack(inst, data)
    local victim = data.target
    if victim.prefab == "frog" then
        if data.weapon == nil then
            victim.components.freezable:AddColdness(9)
            victim.components.freezable:SpawnShatterFX()

            if victim.shattertask ~= nil then
                victim.shattertask:Cancel()
            end
            victim.shattertask =
                victim:DoTaskInTime(
                math.random(0.25, 50),
                function()
                    if victim.components.freezable:IsFrozen() then
                        freezedeath(victim)
                    end
                end
            )
            return
        elseif victim.components.freezable:IsFrozen() then
            if math.random(0, 20) == 10 then
                freezedeath(victim)
                return
            end
        end
    end

    if not inst.components.health:IsDead() and IsValidVictim(victim) then
        local total_health = victim.components.health:GetMaxWithPenalty()
        local damage =
            data.weapon ~= nil and data.weapon.components.weapon.damage or inst.components.combat.defaultdamage
        local percent = (damage <= 0 and 0) or (total_health <= 0 and math.huge) or damage / total_health
        --math and clamp does account for 0 and infinite cases
        local delta = math.clamp(victim.components.combat.defaultdamage * .25 * percent, .33, 2)

        --decay stored battleborn
        if inst.battleborn > 0 then
            local dt = GetTime() - inst.battleborn_time - BATTLEBORN_STORE_TIME
            if dt >= BATTLEBORN_DECAY_TIME then
                inst.battleborn = 0
            elseif dt > 0 then
                local k = dt / BATTLEBORN_DECAY_TIME
                inst.battleborn = Lerp(inst.battleborn, 0, k * k)
            end
        end

        --store new battleborn
        inst.battleborn = inst.battleborn + delta
        inst.battleborn_time = GetTime()

        --consume battleborn if enough has been stored
        if inst.battleborn > BATTLEBORN_TRIGGER_THRESHOLD then
            inst.components.sanity:DoDelta(inst.battleborn)
            inst.battleborn = 0
        end
    end
end

--respawn stuff
local function FairyRespawn(inst, data)
    if inst:HasTag("playerghost") then
        --ghosts should not be able to die atm
        return
    end
    inst.components.health:SetInvincible(true)

    inst:ClearBufferedAction()

    inst.components.inventory:Close()
    inst.components.inventory:Hide()
    inst:PushEvent("ms_closepopups")

    inst:DoTaskInTime(
        3,
        function(inst, data)
            inst.sg:GoToState("fairyrevive")
        end,
        nil
    )
end

local function onbecamehuman(inst)
    -- Set speed when reviving from ghost (optional)
    inst.components.locomotor:SetExternalSpeedMultiplier(inst, "cirno_speed_mod", 1)
end

local function onbecameghost(inst)
    -- Remove speed modifier when becoming a ghost
    inst.components.locomotor:RemoveExternalSpeedMultiplier(inst, "cirno_speed_mod")
end

------------
-- ONLOAD --
------------
local function onload(inst, data)
    -- GHOST
    inst:ListenForEvent("ms_respawnedfromghost", onbecamehuman)
    inst:ListenForEvent("ms_becameghost", onbecameghost)

    -- CHECK GHOST ON STARTUP
    if inst:HasTag("playerghost") then
        onbecameghost(inst)
    else
        onbecamehuman(inst)
    end
end

-------------
-- ONSPAWN --
-------------
local function onSpawn(inst)
    onload(inst)
end

----------------------------
-- CLIENT AND SERVER INIT --
----------------------------
local common_postinit =
    function(inst)
    inst.Physics:SetCapsule(.5 * TUNING.CIRNO.CIRNO_SCALE, 1) -- If game is updated, make sure this size is up to date.
    -- any mod that modifies this may have compatibility issues
    -- Minimap icon
    inst.MiniMapEntity:SetIcon("cirno.tex")
    inst:AddTag("icefairy")
    inst:AddTag("HairFrontHat")
    inst:AddTag("HASHEATER")
    --inst:AddTag("fridge")
end

----------------------
-- SERVER ONLY INIT --
----------------------
local master_postinit =
    function(inst)
    -- choose which sounds this character will play
    inst.soundsname = "cirno"

    -- Uncomment if "wathgrithr"(Wigfrid) or "webber" voice is used
    --inst.talker_path_override = "dontstarve_DLC001/characters/"

    inst.AnimState:SetScale(TUNING.CIRNO.CIRNO_SCALE, TUNING.CIRNO.CIRNO_SCALE, TUNING.CIRNO.CIRNO_SCALE)
    inst.DynamicShadow:SetSize(1.3 * TUNING.CIRNO.CIRNO_SCALE, .6 * TUNING.CIRNO.CIRNO_SCALE)

    inst.components.health:SetMaxHealth(TUNING.CIRNO.CIRNO_MAX_HEALTH)
    inst.components.hunger:SetMax(TUNING.CIRNO.CIRNO_MAX_HUNGER)
    inst.components.sanity:SetMax(TUNING.CIRNO.CIRNO_MAX_SANITY)

    --COMBAT
    inst.components.combat:SetRange(2 * TUNING.CIRNO.CIRNO_SCALE) -- smaller range since she's also smaller
    inst.components.combat.damagemultiplier = TUNING.CIRNO.CIRNO_DAMAGE_MOD

    inst:ListenForEvent("onattackother", onattack)
    inst:ListenForEvent(
        "death",
        function(instance)
            instance.battleborn = 0
        end
    )

    inst.battleborn = 0
    inst.battleborn_time = 0

    -- RESPAWN
    local old_setval = inst.components.health.SetVal
    inst.components.health.SetVal = function(self, val, cause, afflicter)
        if val <= 0 and self.inst.components.sanity.current >= TUNING.CIRNO.CIRNO_RESPAWN_COST then
            if not inst.fairydead then
                inst.fairydead = true
                self.currenthealth = 0
                self.inst:PushEvent("fairyrespawn", {cause = cause, afflicter = afflicter})
            end
            return
        end
        old_setval(self, val, cause, afflicter)
    end

    -- resurrection
    inst:ListenForEvent("fairyrespawn", FairyRespawn)

    --temp
    --inst.components.temperature:SetModifier("cirno", 40)
    --inst.components.temperature.inherentinsulation = TUNING.INSULATION_LARGE

    -- heater
    --inst._heater = SpawnPrefab("heatsauce")
    --inst._heater.entity:SetParent(inst.entity)

    local old_calcdamage = inst.components.combat.CalcDamage
    inst.components.combat.CalcDamage = function(self, target, weapon, multiplier)
        if weapon == nil and target.prefab == "frog" then
            return 0
        end
        return old_calcdamage(self, target, weapon, multiplier)
    end

    inst.longpig_replacement = "ash" -- TODO: make pixie dust.
    --save/load stuff
    inst.OnLoad = onload
    inst.OnNewSpawn = onSpawn
end

local function heat_fn()
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst.entity:AddNetwork()

    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    -- heater
    inst:AddComponent("heater")
    inst.components.heater.heatfn = GetHeatFn
    inst.components.heater:SetThermics(false, true)

    inst.persists = false

    return inst
end

local function giver_common(prefab, count, candouble)
    local inst = CreateEntity()
    inst.entity:AddTransform()
    inst:AddTag("CLASSIFIED")
    inst.persists = false

    inst.OnBuiltFn = function(self, builder)
        local prod = SpawnPrefab(prefab, nil, nil, builder.userid)
        local x, y, z = builder.Transform:GetWorldPosition()
        local ents = TheSim:FindEntities(x, y, z, TUNING.RESEARCH_MACHINE_DIST, {"watersource"})
        local double = false
        if ents then
            for i, v in pairs(ents) do
                if v.entity:IsVisible() then
                    double = true
                    break
                end
            end
        end
        if not double or not candouble then
            prod.components.stackable:SetStackSize(count)
        else
            prod.components.stackable:SetStackSize(count * 2)
        end
        builder.components.inventory:GiveItem(prod, nil, Vector3(x, y, z))

        self:Remove()
    end

    return inst
end

local function ice_giver()
    return giver_common("ice", TUNING.CIRNO.ICE_CRAFT_AMOUNT, true)
end

local function icicle_giver()
    return giver_common("icicle", TUNING.CIRNO.ICE_CRAFT_AMOUNT, true)
end

local function icicle_swapper()
    return giver_common("icicle", 1, false)
end

return 
	MakePlayerCharacter("cirno", prefabs, assets, common_postinit, master_postinit, start_inv), 
	--Prefab("heatsauce", heat_fn),
	Prefab("ice_giver", ice_giver), Prefab("icicle_giver", icicle_giver), Prefab("icicle_swapper", icicle_swapper)
