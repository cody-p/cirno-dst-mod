local assets =
{
	Asset( "ANIM", "anim/cirno.zip" ),
	Asset( "ANIM", "anim/ghost_cirno_build.zip" ),
}

local skins =
{
	normal_skin = "cirno",
	ghost_skin = "ghost_cirno_build",
}

local base_prefab = "cirno"

local tags = {"CIRNO", "CHARACTER"}

return CreatePrefabSkin("cirno_none",
{
	base_prefab = base_prefab, 
	skins = skins, 
	assets = assets,
	tags = tags,
	
	skip_item_gen = true,
	skip_giftable_gen = true,
})