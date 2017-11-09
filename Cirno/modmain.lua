PrefabFiles = {
	"cirno",
	"cirno_none",
	"iceweapons",
	"icicle"
}

Assets = {
    Asset( "IMAGE", "images/saveslot_portraits/cirno.tex" ),
    Asset( "ATLAS", "images/saveslot_portraits/cirno.xml" ),

    Asset( "IMAGE", "images/selectscreen_portraits/cirno.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/cirno.xml" ),
	
    Asset( "IMAGE", "images/selectscreen_portraits/cirno_silho.tex" ),
    Asset( "ATLAS", "images/selectscreen_portraits/cirno_silho.xml" ),

    Asset( "IMAGE", "bigportraits/cirno.tex" ),
    Asset( "ATLAS", "bigportraits/cirno.xml" ),
	
	Asset( "IMAGE", "images/map_icons/cirno.tex" ),
	Asset( "ATLAS", "images/map_icons/cirno.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_cirno.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_cirno.xml" ),
	
	Asset( "IMAGE", "images/avatars/avatar_ghost_cirno.tex" ),
    Asset( "ATLAS", "images/avatars/avatar_ghost_cirno.xml" ),
	
	Asset( "IMAGE", "images/avatars/self_inspect_cirno.tex" ),
    Asset( "ATLAS", "images/avatars/self_inspect_cirno.xml" ),
	
	Asset( "IMAGE", "images/names_cirno.tex" ),
    Asset( "ATLAS", "images/names_cirno.xml" ),
	
    Asset( "IMAGE", "bigportraits/cirno_none.tex" ),
    Asset( "ATLAS", "bigportraits/cirno_none.xml" ),
	
	Asset("SOUNDPACKAGE", "sound/cirno.fev"),	
	Asset("SOUND", "sound/cirno.fsb"),
	
	-- spear icon 
	Asset("ATLAS", "images/inventoryimages/icespear.xml"),
    Asset("IMAGE", "images/inventoryimages/icespear.tex"),	
	
	-- axe icon 
	Asset("ATLAS", "images/inventoryimages/iceaxe.xml"),
    Asset("IMAGE", "images/inventoryimages/iceaxe.tex"),
	
	-- icicle icon 
	Asset("ATLAS", "images/inventoryimages/icicle.xml"),
    Asset("IMAGE", "images/inventoryimages/icicle.tex"),	
}
	
RemapSoundEvent( "dontstarve/characters/cirno/death_voice", "cirno/characters/cirno/death_voice" )
RemapSoundEvent( "dontstarve/characters/cirno/hurt", "cirno/characters/cirno/hurt" )
RemapSoundEvent( "dontstarve/characters/cirno/talk_LP", "cirno/characters/cirno/talk_LP" )
RemapSoundEvent( "dontstarve/characters/cirno/emote", "cirno/characters/cirno/emote" )
RemapSoundEvent( "dontstarve/characters/cirno/yawn", "cirno/characters/cirno/yawn" )
RemapSoundEvent( "dontstarve/characters/cirno/ghost_LP", "dontstarve/characters/willow/ghost_LP" )
RemapSoundEvent( "dontstarve/characters/cirno/pose", "cirno/characters/cirno/pose" )

local require = GLOBAL.require
local STRINGS = GLOBAL.STRINGS
local TUNING = GLOBAL.TUNING
local ACTIONS = GLOBAL.ACTIONS

-- The character select screen lines
STRINGS.CHARACTER_TITLES.cirno = "The Ice Fairy"
STRINGS.CHARACTER_NAMES.cirno = "Cirno"
STRINGS.CHARACTER_DESCRIPTIONS.cirno = "*Can make ice\n*Likes to fight people\n*Has multiple lives"
STRINGS.CHARACTER_QUOTES.cirno = "\"I'm the strongest!\""

-- Custom speech strings
STRINGS.CHARACTERS.CIRNO = require "speech_cirno"

-- item string
STRINGS.TABS.ICECRAFT = "Ice Crafting"

STRINGS.NAMES.ICESPEAR = "Ice Spear"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICESPEAR = "It makes my hands numb when I hold it."
STRINGS.RECIPE_DESC.ICESPEAR = "A frigid weapon."

STRINGS.NAMES.ICEAXE = "Ice Axe"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICEAXE = "I'll need the wood I get from using this just to warm myself up again."
STRINGS.RECIPE_DESC.ICEAXE = "Endothermic tree killing."

STRINGS.NAMES.ICEPICKAXE = "Ice Pickaxe"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICEPICKAXE = "This seems impractical."
STRINGS.RECIPE_DESC.ICEPICKAXE = "Smash mineral rocks with water rocks."

STRINGS.NAMES.ICEHAMMER = "Ice Hammer"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICEHAMMER = "As cold as it is heavy."
STRINGS.RECIPE_DESC.ICEHAMMER = "Smash EVERYTHING with water rocks."

STRINGS.NAMES.ICICLE = "Icicle"
STRINGS.CHARACTERS.GENERIC.DESCRIBE.ICICLE = "It looks pretty sharp"
STRINGS.RECIPE_DESC.ICICLE = "Throw ice spikes at your enemies."

STRINGS.NAMES.ICE_GIVER = "Ice"
STRINGS.RECIPE_DESC.ICE_GIVER = "Free ice cubes"

STRINGS.NAMES.ICICLE_GIVER = "Icicle"
STRINGS.RECIPE_DESC.ICICLE_GIVER = "Throw ice spikes at your enemies."

STRINGS.NAMES.ICICLE_SWAPPER = "Icicle"
STRINGS.RECIPE_DESC.ICICLE_SWAPPER = "Sharpen some ice."

-- tuning
TUNING.CIRNO = {}
TUNING.CIRNO.CIRNO_HUNGER_RATE = TUNING.WILSON_HUNGER_RATE * 0.8
TUNING.CIRNO.CIRNO_MAX_HEALTH = 50
TUNING.CIRNO.CIRNO_MAX_HUNGER = 125
TUNING.CIRNO.CIRNO_MAX_SANITY = 125
TUNING.CIRNO.CIRNO_RESPAWN_COST = 50
TUNING.CIRNO.CIRNO_SCALE = 0.66

TUNING.CIRNO.ICE_SPEAR_COST = 10
TUNING.CIRNO.ICE_AXE_COST = 8
TUNING.CIRNO.ICE_PICKAXE_COST = 8
TUNING.CIRNO.ICE_HAMMER_COST = 9
TUNING.CIRNO.ICICLE_SWAP_COST = 2

TUNING.CIRNO.ICE_CRAFT_AMOUNT = 2
TUNING.CIRNO.ICE_CRAFT_COST_PER = 2
TUNING.CIRNO.CIRNO_COLD_LEVEL = -10

-- wep constants
TUNING.CIRNO.ICE_SPEAR_FREEZE_AMOUNT = 0.6
TUNING.CIRNO.ICE_SPEAR_CONSUMPTION = 0.01

TUNING.CIRNO.ICE_AXE_FREEZE_AMOUNT = 0.4
TUNING.CIRNO.ICE_AXE_CONSUMPTION = 0.01
TUNING.CIRNO.ICE_AXE_TOOL_CONSUMPTION = 1 / TUNING.AXE_USES

TUNING.CIRNO.ICE_PICKAXE_FREEZE_AMOUNT = 0.4
TUNING.CIRNO.ICE_PICKAXE_CONSUMPTION = 0.01
TUNING.CIRNO.ICE_PICKAXE_TOOL_CONSUMPTION = 1 / TUNING.PICKAXE_USES

TUNING.CIRNO.ICE_HAMMER_FREEZE_AMOUNT = 0.4
TUNING.CIRNO.ICE_HAMMER_CONSUMPTION = 0.01
TUNING.CIRNO.ICE_HAMMER_TOOL_CONSUMPTION = 1 / TUNING.HAMMER_USES

TUNING.CIRNO.ICE_HAMMER_FREEZE_AMOUNT = 1
TUNING.CIRNO.ICE_HAMMER_CONSUMPTION = 1

TUNING.CIRNO.ICE_THROW_FREEZE_AMOUNT = 1
TUNING.CIRNO.ICE_THROW_DAMAGE = 20

TUNING.CIRNO.UNARMED_FREEZE_AMOUNT = 0.4

-- The character's name as appears in-game 
STRINGS.NAMES.CIRNO = "Cirno"

AddMinimapAtlas("images/map_icons/cirno.xml")

if not GLOBAL.KnownModIndex:IsModEnabled("workshop-975191969") then 
	-- Add hat override
	local function AddHairFrontHat(pref)
		if GLOBAL.TheWorld.ismastersim then 
			local OldEquip = pref.components.equippable.onequipfn
				pref.components.equippable.onequipfn = function(inst, owner, symbol_override)
				if owner:HasTag("HairFrontHat") then
					owner.AnimState:OverrideSymbol("hairfront", owner.prefab, "hairfront_hat")
				end
				OldEquip(inst, owner, symbol_override)
			end
			
			local OldUnequip = pref.components.equippable.onunequipfn
			pref.components.equippable.onunequipfn = function(inst, owner)
				if (owner:HasTag("HairFrontHat")) then
					owner.AnimState:ClearOverrideSymbol("hairfront")
				end
				OldUnequip(inst, owner)
			end
		end
	end
	AddPrefabPostInit("strawhat", AddHairFrontHat)
	AddPrefabPostInit("tophat", AddHairFrontHat)
	AddPrefabPostInit("beefalohat", AddHairFrontHat)
	AddPrefabPostInit("featherhat", AddHairFrontHat)
	AddPrefabPostInit("beehat", AddHairFrontHat)
	AddPrefabPostInit("minerhat", AddHairFrontHat)
	AddPrefabPostInit("spiderhat", AddHairFrontHat)
	AddPrefabPostInit("footballhat", AddHairFrontHat)
	--AddPrefabPostInit("earmuffshat", AddHairFrontHat)
	AddPrefabPostInit("winterhat", AddHairFrontHat)
	AddPrefabPostInit("bushhat", AddHairFrontHat)
	--AddPrefabPostInit("flowerhat", AddHairFrontHat)
	AddPrefabPostInit("walrushat", AddHairFrontHat)
	AddPrefabPostInit("slurtlehat", AddHairFrontHat)
	AddPrefabPostInit("ruinshat", AddHairFrontHat)
	--AddPrefabPostInit("molehat", AddHairFrontHat)
	AddPrefabPostInit("wathgrithrhat", AddHairFrontHat)
	AddPrefabPostInit("icehat", AddHairFrontHat)
	AddPrefabPostInit("rainhat", AddHairFrontHat)
	AddPrefabPostInit("catcoonhat", AddHairFrontHat)
	AddPrefabPostInit("watermelonhat", AddHairFrontHat)
	AddPrefabPostInit("eyebrellahat", AddHairFrontHat)
	AddPrefabPostInit("red_mushroomhat", AddHairFrontHat)
	AddPrefabPostInit("green_mushroomhat", AddHairFrontHat)
	AddPrefabPostInit("blue_mushroomhat", AddHairFrontHat)
	AddPrefabPostInit("hivehat", AddHairFrontHat)
	AddPrefabPostInit("dragonheadhat", AddHairFrontHat)
	AddPrefabPostInit("dragonbodyhat", AddHairFrontHat)
	AddPrefabPostInit("dragontailhat", AddHairFrontHat)
	AddPrefabPostInit("deserthat", AddHairFrontHat)
	--AddPrefabPostInit("goggleshat", AddHairFrontHat)
	AddPrefabPostInit("skeletonhat", AddHairFrontHat)
	
else
	print("-------------------------------------------\nDid not enable hairfront functionality because the yuyuko mod is already doing that! If you see this message and the yuyuko mod isn't enabled, please report it!")
end
-- check screen
local function IsDefaultScreen() 
	if GLOBAL.TheFrontEnd:GetActiveScreen() and GLOBAL.TheFrontEnd:GetActiveScreen().name and type(GLOBAL.TheFrontEnd:GetActiveScreen().name) == "string" and GLOBAL.TheFrontEnd:GetActiveScreen().name == "HUD" then
		return true
	else
		return false
	end
end

AddModCharacter("cirno", "FEMALE")

 local Ingredient = GLOBAL.Ingredient
 
 GLOBAL.CHARACTER_INGREDIENT.HUNGER = "decrease_hunger"
 AddComponentPostInit("builder", function(inst)
	local old_haschar = inst.HasCharacterIngredient
	function inst:HasCharacterIngredient(ingredient)
		if ingredient.type == GLOBAL.CHARACTER_INGREDIENT.HUNGER then
			if self.inst.components.hunger ~= nil then
				local current = math.ceil(self.inst.components.hunger.current)
				return current >= ingredient.amount, current
			end
		else
			return old_haschar(self, ingredient)
		end
	end

	local old_remove = inst.RemoveIngredients
	function inst:RemoveIngredients(ingredients, recname)
		old_remove(self, ingredients, recname)
		
		local recipe = GLOBAL.AllRecipes[recname]
		if recipe then
			for k,v in pairs(recipe.character_ingredients) do
				if v.type == GLOBAL.CHARACTER_INGREDIENT.HUNGER then
					self.inst.components.hunger:DoDelta(-v.amount)
				end
			end
		end
	end
 end)

 AddClassPostConstruct("components/builder_replica", function(inst)
	local old_haschar = inst.HasCharacterIngredient
	function inst:HasCharacterIngredient(ingredient)
		if ingredient.type == GLOBAL.CHARACTER_INGREDIENT.HUNGER then
			if self.inst.components.builder ~= nil then
				return self.inst.components.builder:HasCharacterIngredient(ingredient)
			elseif self.classified ~= nil then
				local hunger = self.inst.replica.hunger
				if hunger ~= nil then
					local current = math.ceil(hunger:GetCurrent())
					return current >= ingredient.amount, current
				end
			end
		else
			return old_haschar(self, ingredient)
		end
		return false, 0
	end
 end)
 
 -- CHARACTER_INGREDIENT.HUNGER doesn't seem to get set be
local old_ischaringred = GLOBAL.IsCharacterIngredient
GLOBAL.IsCharacterIngredient = function(ingredienttype)
	return ingredienttype == GLOBAL.CHARACTER_INGREDIENT.HUNGER or old_ischaringred(ingredienttype)
end
 
local CUSTOM_RECIPETABS = GLOBAL.CUSTOM_RECIPETABS
CUSTOM_RECIPETABS.ICECRAFT =
{
  str = "ICECRAFT",
  sort = 9,
  icon = "ice.tex",
  icon_atlas = "images/inventoryimages.xml",
}
 
 ----- RECIPES
 
 -- AddRecipe("name",
-- {GLOBAL.Ingredient("ingredient", count), GLOBAL.Ingredient("ingredient", count)},
-- GLOBAL.RECIPETABS.TOOLS,
-- GLOBAL.TECH.SCIENCE_ONE,
-- nil, -- placer
-- nil, -- min_spacing
-- nil, -- nounlock
-- nil, -- numtogive
-- nil, -- builder_tag
-- "images/inventoryimages/image.xml", -- atlas
-- "image.tex")
 
-- ice
 AddRecipe("ice_giver",
  {
    Ingredient(GLOBAL.CHARACTER_INGREDIENT.HUNGER, TUNING.CIRNO.ICE_CRAFT_COST_PER * TUNING.CIRNO.ICE_CRAFT_AMOUNT)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.NONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages.xml", "ice.tex")
  
  AddRecipe("icicle_giver",
  {
    Ingredient(GLOBAL.CHARACTER_INGREDIENT.HUNGER, TUNING.CIRNO.ICE_CRAFT_COST_PER * TUNING.CIRNO.ICE_CRAFT_AMOUNT * 2)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.NONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/icicle.xml", "icicle.tex")
  
  AddRecipe("icicle_swapper",
  {
    Ingredient("ice", TUNING.CIRNO.ICICLE_SWAP_COST)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.NONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/icicle.xml", "icicle.tex")
  
  -- spear
   AddRecipe("icespear",
  {
	Ingredient("icicle", 1),
    Ingredient("ice", TUNING.CIRNO.ICE_SPEAR_COST - TUNING.CIRNO.ICICLE_SWAP_COST)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.SCIENCE_ONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/icespear.xml", "icespear.tex" )
  
  -- axe
  AddRecipe("iceaxe",
  {
    Ingredient("ice", TUNING.CIRNO.ICE_AXE_COST)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.SCIENCE_ONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/iceaxe.xml", "iceaxe.tex" )
  
    AddRecipe("icepickaxe",
  {
    Ingredient("ice", TUNING.CIRNO.ICE_PICKAXE_COST)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.SCIENCE_ONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/iceaxe.xml", "iceaxe.tex" )
  
   AddRecipe("icehammer",
  {
    Ingredient("ice", TUNING.CIRNO.ICE_HAMMER_COST)
  },
  CUSTOM_RECIPETABS.ICECRAFT,  GLOBAL.TECH.SCIENCE_ONE,
  nil, nil, nil, nil, "icefairy", "images/inventoryimages/iceaxe.xml", "iceaxe.tex" )
  
  -- SG STUFF
  local function DoMountSound(inst, mount, sound, ispredicted)
    if mount ~= nil and mount.sounds ~= nil then
        inst.SoundEmitter:PlaySound(mount.sounds[sound], nil, nil, ispredicted)
    end
end

  AddStategraphState("wilson", GLOBAL.State{
        name = "fairyrespawn",
        tags = { "busy", "pausepredict", "nomorph" },

        onenter = function(inst)
            
			if inst.components.freezable ~= nil and inst.components.freezable:IsFrozen() then
				inst.components.freezable:Unfreeze()
			end
			if inst.components.pinnable ~= nil and inst.components.pinnable:IsStuck() then
				inst.components.pinnable:Unstick()
			end

			if inst.components.inventory:IsHeavyLifting() then
				inst.components.inventory:DropItem(
					inst.components.inventory:Unequip(EQUIPSLOTS.BODY),
					true,
					true
				)
			end

            inst.components.locomotor:Stop()
            inst.components.locomotor:Clear()
            inst:ClearBufferedAction()

            if inst.components.rider:IsRiding() then
                DoMountSound(inst, inst.components.rider:GetMount(), "yell")
				
                inst.AnimState:PlayAnimation("fall_off")
                inst.sg:AddStateTag("dismounting")
            else
                inst.SoundEmitter:PlaySound("dontstarve/wilson/death")

                if not inst:HasTag("mime") then
                    inst.SoundEmitter:PlaySound((inst.talker_path_override or "dontstarve/characters/")..(inst.soundsname or inst.prefab).."/death_voice")
                end

                if GLOBAL.HUMAN_MEAT_ENABLED then
                    inst.components.inventory:GiveItem(GLOBAL.SpawnPrefab("humanmeat")) -- Drop some player meat!
                end
                inst.components.inventory:DropEverything(true)

                inst.AnimState:Hide("swap_arm_carry")
                inst.AnimState:PlayAnimation("death")
            end

            inst.components.burnable:Extinguish()

            if inst.components.playercontroller ~= nil then
                inst.components.playercontroller:RemotePausePrediction()
                inst.components.playercontroller:Enable(false)
            end

            --Don't process other queued events if we died this frame
            inst.sg:ClearBufferedEvents()
        end,

        onexit = function(inst)
			
        end,

        events =
        {
            GLOBAL.EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
                    if inst.sg:HasStateTag("dismounting") then
                        inst.sg:RemoveStateTag("dismounting")
                        inst.components.rider:ActualDismount()

                        inst.SoundEmitter:PlaySound("dontstarve/wilson/death")

                        if not inst:HasTag("mime") then
                            inst.SoundEmitter:PlaySound((inst.talker_path_override or "dontstarve/characters/")..(inst.soundsname or inst.prefab).."/death_voice")
                        end

                        if HUMAN_MEAT_ENABLED then
                            inst.components.inventory:GiveItem(SpawnPrefab("humanmeat")) -- Drop some player meat!
                        end
                        inst.components.inventory:DropEverything(true)

                        inst.AnimState:Hide("swap_arm_carry")
                        inst.AnimState:PlayAnimation("death")
					end
                end
            end),
        },
    })
	
	AddStategraphState("wilson", GLOBAL.State{
        name = "fairyrevive",
        tags = { "busy", "pausepredict", "nomorph" },

        onenter = function(inst)
			local x, y, z = inst.Transform:GetWorldPosition()
			y = y - 0.5
			local effect = GLOBAL.SpawnPrefab("spawn_fx_medium")
			--effect.AnimState:SetAddColour(0,0,1,1)
			effect.Transform:SetPosition(x,y,z)
			
			inst.entity:Hide()			
			inst:DoTaskInTime(.4, function(inst)
				inst.entity:Show()
				inst.components.sanity:DoDelta(-TUNING.CIRNO.CIRNO_RESPAWN_COST)
				inst.components.health:SetCurrentHealth(TUNING.CIRNO.CIRNO_MAX_HEALTH)
				inst.fairydead = false
				inst.AnimState:PlayAnimation("transform_end")
			end, nil)
        end,

        onexit = function(inst)
			
        end,

        events =
        {
            GLOBAL.EventHandler("animover", function(inst)
                if inst.AnimState:AnimDone() then
					if inst.components.playercontroller ~= nil then  
						inst.components.playercontroller:Enable(true)
					end
					inst.sg:RemoveStateTag("busy")
					inst.sg:RemoveStateTag("nopredict")
					inst.sg:RemoveStateTag("nomorph")
					inst.components.health:ForceUpdateHUD(true)
					inst.components.health:SetInvincible(false)
					inst.components.inventory:Open()
					inst.sg:GoToState("idle")
                end
            end),
        },
    })
	
	AddStategraphEvent("wilson", GLOBAL.EventHandler("fairyrespawn", function(inst) 
		if inst.sleepingbag ~= nil and (inst.sg:HasStateTag("bedroll") or inst.sg:HasStateTag("tent")) then -- wakeup on death to "consume" sleeping bag first
            inst.sleepingbag.components.sleepingbag:DoWakeUp()
            inst.sleepingbag = nil
        end

        inst.sg:GoToState("fairyrespawn")
	end))
	
	-- make heatrock not cool cirno. She doesn't need it.
AddPrefabPostInit("heatrock", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		local oldfunc = inst.components.heater.heatfn
		
		inst.components.heater.heatfn = function(instance, observer)
			local val = oldfunc(instance, observer)
			if instance.components.heater:IsEndothermic() and observer ~= nil and observer:HasTag("icefairy") then
				return nil
			end
			return val
		end
		inst.components.heater.carriedheatfn = function(instance)
			local val = oldfunc(instance, observer)
			if instance.components.heater:IsEndothermic() and instance.components.inventoryitem.owner ~= nil and instance.components.inventoryitem.owner:HasTag("icefairy") then
				return nil
			end
			return val
		end
	end
end)

AddPrefabPostInit("ice", function(inst)
	if GLOBAL.TheWorld.ismastersim then
		inst.components.edible.healthvalue = 0
		inst.components.edible.hungervalue = 1
	end
end)