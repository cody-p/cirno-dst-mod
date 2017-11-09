-- common
local function onfiremelt(inst)
    inst.components.perishable.frozenfiremult = true
end

local function onstopfiremelt(inst)
    inst.components.perishable.frozenfiremult = false
end

local function update_strength_mult(self, perishlevel)
	self.strength_mult = ((perishlevel * 0.5) + 0.5)
end

local function make_iceweapon(data)
	local inst = CreateEntity()
	
	inst.entity:AddTransform()
    inst.entity:AddAnimState()
    inst.entity:AddNetwork()

    MakeInventoryPhysics(inst)
	
	inst.AnimState:SetBank(data.bank)
    inst.AnimState:SetBuild(data.build)
    inst.AnimState:PlayAnimation("idle")
	
	inst:AddTag("iceweapon")
	inst:AddTag("show_spoilage")
	inst:AddTag("frozen")
	inst:AddTag("icebox_valid")
	inst:AddTag("HASHEATER")
	
	if data.tags ~= nil then 
		for index, tag in pairs(data.tags) do
			inst:AddTag(tag)
		end
	end
	
	if data.client_init ~= nil then
		data.client_init(inst)
	end
	
	inst.entity:SetPristine()
	if not TheWorld.ismastersim then
		return inst
	end
	
	inst:AddComponent("perishable")
    inst.components.perishable:SetPerishTime(data.perishtime)
    inst.components.perishable:StartPerishing()
    inst.components.perishable:SetOnPerishFn(data.onperish)
	
	inst:AddComponent("smotherer")

    inst:ListenForEvent("firemelt", onfiremelt)
    inst:ListenForEvent("stopfiremelt", onstopfiremelt)    

    inst:AddComponent("inspectable")

    inst:AddComponent("inventoryitem")
	inst.components.inventoryitem.imagename = data.imagename
    inst.components.inventoryitem.atlasname = "images/inventoryimages/"..data.atlasname..".xml"
	inst.components.inventoryitem:SetOnPickupFn(onstopfiremelt)

    inst:AddComponent("equippable")
    inst.components.equippable:SetOnEquip(data.onequip)
    inst.components.equippable:SetOnUnequip(data.onunequip)
	
	inst:AddComponent("heater")
	inst.components.heater:SetThermics(false, true)
	inst.components.heater.equippedheatfn = function(heater, observer)
		return (observer ~= nil and not observer:HasTag("icefairy")) and -10 or nil
	end
	
	inst:AddComponent("weapon")
    inst.components.weapon:SetDamage(data.damage)
	inst.components.weapon:SetOnAttack(
		function(weapon, attacker, target)
			weapon.components.perishable:ReducePercent(data.percentconsume)
			if target.components.freezable ~= nil then
				target.components.freezable:AddColdness(data.coldlevel * inst.strength_mult)
				target.components.freezable:SpawnShatterFX()
			end
		end
	)
	
	if data.tool ~= nil then
		inst:AddComponent("tool")
		if data.tool.consume == nil then 
			data.tool.consume = 1 
		end
		inst.components.tool:SetAction(data.tool.action, data.tool.consume)
		inst.components.perishable.OnUsedAsItem = function(self, action)
			if self.inst.components.tool:CanDoAction(action) then
				self:ReducePercent(data.tool.consume)
			end
		end
		
		inst:ListenForEvent("perishchange", function(instance, eventdata)
			update_strength_mult(inst, eventdata.percent)
			inst.components.tool:SetAction(data.tool.action, (data.tool.effectiveness or 1) * inst.strength_mult)
		end)
	end
	
	inst:ListenForEvent("perishchange", function(instance, eventdata)
		update_strength_mult(inst, eventdata.percent)
		inst.components.weapon:SetDamage(data.damage * inst.strength_mult)
	end)
	
				
	MakeHauntableLaunch(inst)
	
	if data.server_init ~= nil then
		data.server_init(inst)
	end
	
	return inst
end

-- spear
local spear_assets={    
	Asset("ANIM", "anim/icespear.zip"),    
	Asset("ANIM", "anim/swap_icespear.zip"),
}
local function spear_onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_icespear", "swap_icespear")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
local function spear_onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
local function spear_onperish(inst)
    local owner = inst.components.inventoryitem.owner
    if owner ~= nil then
        if owner.components.moisture ~= nil then
            owner.components.moisture:DoDelta(2*TUNING.CIRNO.ICE_SPEAR_COST)
        elseif owner.components.inventoryitem ~= nil then
            owner.components.inventoryitem:AddMoisture(4 * TUNING.CIRNO.ICE_SPEAR_COST)
        end
        inst:Remove()
    else
        inst.components.inventoryitem.canbepickedup = false
        --inst.AnimState:PlayAnimation("melt")
        --inst:ListenForEvent("animover", inst.Remove)
		inst:Remove()
    end
end
local function spear()	
    return make_iceweapon( 
		{
			perishtime = TUNING.PERISH_SUPERFAST,
			percentconsume = TUNING.CIRNO.ICE_SPEAR_CONSUMPTION,
			coldlevel = TUNING.CIRNO.ICE_SPEAR_FREEZE_AMOUNT,
			bank = "icespear", 
			build = "icespear", 
			imagename = "icespear", 
			atlasname = "icespear",
			onequip = spear_onequip,
			onunequip = spear_onunequip,
			onperish = spear_onperish,
			damage = TUNING.SPEAR_DAMAGE,
			tags = {
				"sharp",
				"pointy"
			},
			tool = nil,
			client_init = nil,
			server_init = nil
		}
	)
end

------ AXE
local axe_assets = {
	Asset("ANIM", "anim/iceaxe.zip"),    
	Asset("ANIM", "anim/swap_iceaxe.zip"),
}
local function axe_onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_iceaxe", "swap_iceaxe")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
local function axe_onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
local function axe_onperish(inst)
    local owner = inst.components.inventoryitem.owner
    if owner ~= nil then
        if owner.components.moisture ~= nil then
            owner.components.moisture:DoDelta(2*TUNING.CIRNO.ICE_AXE_COST)
        elseif owner.components.inventoryitem ~= nil then
            owner.components.inventoryitem:AddMoisture(4 * TUNING.CIRNO.ICE_AXE_COST)
        end
        inst:Remove()
    else
        inst.components.inventoryitem.canbepickedup = false
        --inst.AnimState:PlayAnimation("melt")
        --inst:ListenForEvent("animover", inst.Remove)
		inst:Remove()
    end
end
local function axe()
	return make_iceweapon( 
		{
			perishtime = TUNING.PERISH_SUPERFAST,
			percentconsume = TUNING.CIRNO.ICE_AXE_CONSUMPTION,
			coldlevel = TUNING.CIRNO.ICE_AXE_FREEZE_AMOUNT,
			bank = "iceaxe", 
			build = "iceaxe", 
			imagename = "iceaxe", 
			atlasname = "iceaxe",
			onequip = axe_onequip,
			onunequip = axe_onunequip,
			onperish = axe_onperish,
			damage = TUNING.AXE_DAMAGE,
			tags = nil,
			tool = {
				action = ACTIONS.CHOP,
				consume = TUNING.CIRNO.ICE_AXE_TOOL_CONSUMPTION,
			},
			client_init = nil,
			server_init = nil
		}
	)	
end

------ PICKAXE
local pickaxe_assets = {
	Asset("ANIM", "anim/iceaxe.zip"),    
	Asset("ANIM", "anim/swap_iceaxe.zip"),
}
local function pickaxe_onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_iceaxe", "swap_iceaxe")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
local function pickaxe_onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
local function pickaxe_onperish(inst)
    local owner = inst.components.inventoryitem.owner
    if owner ~= nil then
        if owner.components.moisture ~= nil then
            owner.components.moisture:DoDelta(2*TUNING.CIRNO.ICE_PICKAXE_COST)
        elseif owner.components.inventoryitem ~= nil then
            owner.components.inventoryitem:AddMoisture(4 * TUNING.CIRNO.ICE_PICKAXE_COST)
        end
        inst:Remove()
    else
        inst.components.inventoryitem.canbepickedup = false
        --inst.AnimState:PlayAnimation("melt")
        --inst:ListenForEvent("animover", inst.Remove)
		inst:Remove()
    end
end
local function pickaxe()
	return make_iceweapon( 
		{
			perishtime = TUNING.PERISH_SUPERFAST,
			percentconsume = TUNING.CIRNO.ICE_PICKAXE_CONSUMPTION,
			coldlevel = TUNING.CIRNO.ICE_PICKAXE_FREEZE_AMOUNT,
			bank = "iceaxe", 
			build = "iceaxe", 
			imagename = "iceaxe", 
			atlasname = "iceaxe",
			onequip = pickaxe_onequip,
			onunequip = pickaxe_onunequip,
			onperish = pickaxe_onperish,
			damage = TUNING.PICK_DAMAGE,
			tags = nil,
			tool = {
				action = ACTIONS.MINE,
				consume = TUNING.CIRNO.ICE_PICKAXE_TOOL_CONSUMPTION,
			},
			client_init = nil,
			server_init = nil
		}
	)	
end

------ HAMMER
local hammer_assets = {
	Asset("ANIM", "anim/iceaxe.zip"),    
	Asset("ANIM", "anim/swap_iceaxe.zip"),
}
local function hammer_onequip(inst, owner)
    owner.AnimState:OverrideSymbol("swap_object", "swap_iceaxe", "swap_iceaxe")
    owner.AnimState:Show("ARM_carry")
    owner.AnimState:Hide("ARM_normal")
end
local function hammer_onunequip(inst, owner)
    owner.AnimState:Hide("ARM_carry")
    owner.AnimState:Show("ARM_normal")
end
local function hammer_onperish(inst)
    local owner = inst.components.inventoryitem.owner
    if owner ~= nil then
        if owner.components.moisture ~= nil then
            owner.components.moisture:DoDelta(2*TUNING.CIRNO.ICE_HAMMER_COST)
        elseif owner.components.inventoryitem ~= nil then
            owner.components.inventoryitem:AddMoisture(4 * TUNING.CIRNO.ICE_HAMMER_COST)
        end
        inst:Remove()
    else
        inst.components.inventoryitem.canbepickedup = false
        --inst.AnimState:PlayAnimation("melt")
        --inst:ListenForEvent("animover", inst.Remove)
		inst:Remove()
    end
end
local function hammer()
	return make_iceweapon( 
		{
			perishtime = TUNING.PERISH_SUPERFAST,
			percentconsume = TUNING.CIRNO.ICE_HAMMER_CONSUMPTION,
			coldlevel = TUNING.CIRNO.ICE_HAMMER_FREEZE_AMOUNT,
			bank = "iceaxe", 
			build = "iceaxe", 
			imagename = "iceaxe", 
			atlasname = "iceaxe",
			onequip = hammer_onequip,
			onunequip = hammer_onunequip,
			onperish = hammer_onperish,
			damage = TUNING.HAMMER_DAMAGE,
			tags = nil,
			tool = {
				action = ACTIONS.HAMMER,
				consume = TUNING.CIRNO.ICE_HAMMER_TOOL_CONSUMPTION,
			},
			client_init = nil,
			server_init = nil
		}
	)	
end

return Prefab("common/inventory/icespear", spear, spear_assets),
Prefab("common/inventory/iceaxe", axe, axe_assets),
Prefab("common/inventory/icepickaxe", pickaxe, pickaxe_assets),
Prefab("common/inventory/icehammer", hammer, hammer_assets)