local assets =
{
    Asset("ANIM", "anim/icicle.zip"),
	Asset("ANIM", "anim/swap_icicle.zip")
}

local function onperish(inst)
    local owner = inst.components.inventoryitem.owner
    if owner ~= nil then
        local stacksize = inst.components.stackable:StackSize()
        if owner.components.moisture ~= nil then
            owner.components.moisture:DoDelta(2 * stacksize)
        elseif owner.components.inventoryitem ~= nil then
            owner.components.inventoryitem:AddMoisture(4 * stacksize)
        end
        inst:Remove()
    else
        inst.components.inventoryitem.canbepickedup = false
        inst.AnimState:PlayAnimation("melt")
        inst:ListenForEvent("animover", inst.Remove)
    end
end

local function onfiremelt(inst)
    inst.components.perishable.frozenfiremult = true
end

local function onstopfiremelt(inst)
    inst.components.perishable.frozenfiremult = false
end


local function ice_target()
    local player = ThePlayer
    local ground = TheWorld.Map
    local pos = Vector3()
    --Attack range is 8, leave room for error
    --Min range was chosen to not hit yourself (2 is the hit range)
    for r = 6.5, 3.5, -.25 do
        pos.x, pos.y, pos.z = player.entity:LocalToWorldSpace(r, 0, 0)
        if ground:IsPassableAtPoint(pos:Get()) and not ground:IsPointNearHole(pos) then
            return pos
        end
    end
    return pos
end

local function m_onThrown(inst)
  inst:AddTag("NOCLICK")
  inst:AddTag("thrown")
  
   --inst.Transform:SetTwoFaced()
  --inst.AnimState:SetOrientation(ANIM_ORIENTATION.OnGround)
  inst.AnimState:PlayAnimation("throw", true)
  inst.persists = false

  inst.Physics:SetMass(1)
  inst.Physics:SetCapsule(0.2, 0.2)
  inst.Physics:SetDamping(0)
  inst.Physics:SetCollisionGroup(COLLISION.CHARACTERS)
  inst.Physics:ClearCollisionMask()
  inst.Physics:CollidesWith(COLLISION.WORLD)
  inst.Physics:CollidesWith(COLLISION.OBSTACLES)
  inst.Physics:CollidesWith(COLLISION.ITEMS)
end

local function onhit(inst, attacker)
	local pos = inst:GetPosition()
	if pos.y <= 0.5 then
		local ents = TheSim:FindEntities(pos.x, pos.y, pos.z, 1.5, nil, {"FX", "NOCLICK", "DECOR", "INLIMBO"})

		for k,v in pairs(ents) do
			if v ~= attacker and (not v:HasTag("player") or TheNet:GetPVPEnabled()) then
				if v.components.combat then
					v.components.combat:GetAttacked(attacker, 10)--TUNING.CIRNO.ICE_DAMAGE)
				end
				if v.components.freezable ~= nil then
					v.components.freezable:AddColdness(TUNING.CIRNO.ICE_THROW_FREEZE_AMOUNT)
					v.components.freezable:SpawnShatterFX()
				end
			end
		end
		
		inst.components.wateryprotection:SpreadProtection(inst)

		local pt = inst:GetPosition()
		SpawnPrefab("splash_snow_fx").Transform:SetPosition(pt:Get())

		inst:Remove()
	end
end

local function MakeEquippable(inst)
	if inst.components.equippable == nil then 
		local onequip = function(inst, owner)
			owner.AnimState:OverrideSymbol("swap_object", "swap_icicle", "swap_icicle")
			owner.AnimState:Show("ARM_carry")
			owner.AnimState:Hide("ARM_normal")
		end

		local onunequip = function(inst, owner)
			owner.AnimState:Hide("ARM_carry")
			owner.AnimState:Show("ARM_normal")
		end

		inst:AddComponent("equippable")
		inst.components.equippable:SetOnEquip(onequip)
		inst.components.equippable:SetOnUnequip(onunequip)
		inst.components.equippable.equipstack = true
	end
end

local function MakeProjectile(inst)
	if inst.components.complexprojectile == nil then
		inst:AddComponent("complexprojectile")
		inst.components.complexprojectile:SetHorizontalSpeed(15)
		inst.components.complexprojectile:SetGravity(-35)
		inst.components.complexprojectile:SetOnLaunch(m_onThrown)
		inst.components.complexprojectile:SetOnHit(onhit)
		inst.components.complexprojectile.usehigharc = false
	end
end

local function update_ice(inst, pickupguy)
	if pickupguy and pickupguy:HasTag("icefairy") then
		MakeEquippable(inst)
		MakeProjectile(inst)
	else
		if inst.components.equippable ~= nil then
			inst:RemoveComponent("equippable")
		end
		if pickupguy and inst.components.complexprojectile ~= nil then
			inst:RemoveComponent("complexprojectile")
		end
	end
end

local function fn()
    local inst = CreateEntity()

    inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddSoundEmitter()
	inst.entity:AddPhysics()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)

    inst.AnimState:SetBank("icicle")
    inst.AnimState:SetBuild("icicle")
	inst.AnimState:PlayAnimation("idle")

    inst:AddTag("frozen")
	inst:AddTag("icebox_valid")
	inst:AddTag("sharp")
	inst:AddTag("icebox_valid")
	inst:AddTag("show_spoilage")
	inst:AddTag("projectile")
	
    inst.entity:SetPristine()

    if not TheWorld.ismastersim then
        return inst
    end

    inst:AddComponent("smotherer")

    inst:ListenForEvent("firemelt", onfiremelt)
    inst:ListenForEvent("stopfiremelt", onstopfiremelt)

    inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(TUNING.PERISH_SUPERFAST)
    inst.components.perishable:StartPerishing()
    inst.components.perishable:SetOnPerishFn(onperish)

    inst:AddComponent("tradable")

    inst:AddComponent("stackable")
    inst.components.stackable.maxsize = TUNING.STACK_SIZE_SMALLITEM

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
    inst.components.inventoryitem.imagename = "icicle"
	inst.components.inventoryitem.atlasname = "images/inventoryimages/icicle.xml"
    

	inst.components.inventoryitem:SetOnPickupFn(function(inst, pickupguy)
		onstopfiremelt(inst)
		update_ice(inst, pickupguy)
	end)

    inst:AddComponent("bait")
    inst:AddTag("molebait")

	-- Basically the ice flinger code, just weakened and not ignoring players
	inst:AddComponent("wateryprotection") 
	inst.components.wateryprotection.extinguishheatpercent = TUNING.FIRESUPPRESSOR_EXTINGUISH_HEAT_PERCENT * 0.33
    inst.components.wateryprotection.temperaturereduction = TUNING.FIRESUPPRESSOR_TEMP_REDUCTION * 0.33
    inst.components.wateryprotection.witherprotectiontime = TUNING.FIRESUPPRESSOR_PROTECTION_TIME * 0.33
    inst.components.wateryprotection.addcoldness = 0 -- We don't want to freeze players or self outside of pvp, so we will add coldness manually
	
	MakeEquippable(inst)
	MakeProjectile(inst)

    MakeHauntableLaunchAndSmash(inst)

    return inst
end

return Prefab( "icicle", fn, assets)