--[[
	--- This is Wilson's speech file for Don't Starve Together ---
	Write your character's lines here.
	If you want to use another speech file as a base, or use a more up-to-date version, get them from data\scripts\
	
	If you want to use quotation marks in a quote, put a \ before it.
	Example:
	"Like \"this\"."
]]
return {
	ACTIONFAIL =
	{
		SHAVE =
		{
			AWAKEBEEFALO = "I'm not going to try that while he's awake.", --------------------------
			GENERIC = "I can't shave that!", --------------------------
			NOBITS = "There isn't even any stubble left!", --------------------------
		},
		STORE =
		{
			GENERIC = "It's full.", --------------------------
			NOTALLOWED = "That can't go in there.", --------------------------
			INUSE = "I should wait my turn.", --------------------------
		},
		RUMMAGE =
		{	
			GENERIC = "I can't do that.", --------------------------
			INUSE = "I should wait my turn.", --------------------------	
		},
        COOK =
        {
            GENERIC = "I can't do that.", --------------------------
            INUSE = "I should wait my turn.", --------------------------
            TOOFAR = "It's too far away!", --------------------------
        },
        GIVE =
        {
            DEAD = "Maybe I'll just hold on to this.", --------------------------
            SLEEPING = "Too unconscious to care.", --------------------------
            BUSY = "I'll try again in a second.", --------------------------
        },
        GIVETOPLAYER = 
        {
        	FULL = "Their pockets are too full!", --------------------------
            DEAD = "Maybe I'll just hold on to this.", --------------------------
            SLEEPING = "Too unconscious to care.", --------------------------
            BUSY = "I'll try again in a second.", --------------------------
    	},
    	GIVEALLTOPLAYER = 
        {
        	FULL = "Their pockets are too full!", --------------------------
            DEAD = "Maybe I'll just hold on to this.", --------------------------
            SLEEPING = "Too unconscious to care.", --------------------------
            BUSY = "I'll try again in a second.", --------------------------
    	},
        WRITE =
        {
            GENERIC = "I can't do that.", --------------------------
            INUSE = "There's only room for one scribbler.", --------------------------
        },
        CHANGEIN =
        {
            GENERIC = "I can't do that.", --------------------------
            BURNING = "It's too dangerous right now!", --------------------------
            INUSE = "It can only handle one style change at a time.", --------------------------
        },
        ATTUNE =
        {
            NOHEALTH = "I don't feel well enough.", --------------------------
        },
	},
	ACTIONFAIL_GENERIC = "I don't really feel like it.",
	ANNOUNCE_ADVENTUREFAIL = "That didn't go well. I'll have to try again.", --------------------------
	ANNOUNCE_BEES = "BEEEEEEEEEEEEES!!!!",
	ANNOUNCE_BOOMERANG = "Ow! I should try to catch that!", --------------------------
	ANNOUNCE_CHARLIE = "Who is that?! Fight me where I can see you loser!",
	ANNOUNCE_CHARLIE_ATTACK = "YOWWIE!",
	ANNOUNCE_COLD = "I'm gonna be a popsicle at this rate!",
	ANNOUNCE_HOT = "Need... ice... or... shade!", --------------------------
	ANNOUNCE_CRAFTING_FAIL = "Ugh, this is hard.",
	ANNOUNCE_DEERCLOPS = "A challenger approaches!", 
	ANNOUNCE_DUSK = "It's getting late. It will be dark soon.", --------------------------
	ANNOUNCE_EAT =
	{
		GENERIC = "Yum!", --------------------------
		PAINFUL = "I don't feel so good.", --------------------------
		SPOILED = "That was gross!",
		STALE = "Blech, old stuff.",
		INVALID = "I can't eat it!",
		YUCKY = "I'm not eating that!",
	},
	ANNOUNCE_ENTER_DARK = "I can't see anything!",
	ANNOUNCE_ENTER_LIGHT = "I can see again!", --------------------------
	ANNOUNCE_FREEDOM = "I'm free! I'm finally free!", --------------------------
	ANNOUNCE_HIGHRESEARCH = "I feel so smart now!", --------------------------
	ANNOUNCE_HOUNDS = "Wolves?",
	ANNOUNCE_WORMS = "",
	ANNOUNCE_HUNGRY = "I'm so hungry!", --------------------------
	ANNOUNCE_HUNT_BEAST_NEARBY = "I can smell it!",
	ANNOUNCE_HUNT_LOST_TRAIL = "No more prints. It must have flown off.",
	ANNOUNCE_HUNT_LOST_TRAIL_SPRING = "The wet ground won't hold a footprint.", --------------------------
	ANNOUNCE_INV_FULL = "This is all I can carry.",
	ANNOUNCE_KNOCKEDOUT = "Ugh, my head!", --------------------------
	ANNOUNCE_LOWRESEARCH = "I didn't learn very much from that.", --------------------------
	ANNOUNCE_MOSQUITOS = "Aaah! Bug off!", --------------------------
    ANNOUNCE_NOWARDROBEONFIRE = "It's too dangerous right now!", --------------------------
    ANNOUNCE_NODANGERGIFT = "It's too dangerous right now!", --------------------------
	ANNOUNCE_NODANGERSLEEP = "It's too dangerous right now!", --------------------------
	ANNOUNCE_NODAYSLEEP = "The sun is too bright to sleep right now.",
	ANNOUNCE_NODAYSLEEP_CAVE = "I'm not tired.", --------------------------
	ANNOUNCE_NOHUNGERSLEEP = "I'm too hungry to sleep!",
	ANNOUNCE_NOSLEEPONFIRE = "Sleeping in that seems like a bad idea.", --------------------------
	ANNOUNCE_NODANGERSIESTA = "It's too dangerous right now!", --------------------------
	ANNOUNCE_NONIGHTSIESTA = "Night is for sleeping, not taking siestas.", --------------------------
	ANNOUNCE_NONIGHTSIESTA_CAVE = "I don't think I could really relax down here.", --------------------------
	ANNOUNCE_NOHUNGERSIESTA = "I'm too hungry for a siesta!", --------------------------
	ANNOUNCE_NODANGERAFK = "Now's not the time to flee this fight!", --------------------------
	ANNOUNCE_NO_TRAP = "Well, that was easy.", --------------------------
	ANNOUNCE_PECKED = "Ow! Quit it!", --------------------------
	ANNOUNCE_QUAKE = "That doesn't sound good.", --------------------------
	ANNOUNCE_RESEARCH = "Never stop learning!", --------------------------
	ANNOUNCE_SHELTER = "Wew, cover.",
	ANNOUNCE_THORNS = "Youch!", --------------------------
	ANNOUNCE_BURNT = "Yikes! That was hot!", --------------------------
	ANNOUNCE_TORCH_OUT = "My light just ran out!", --------------------------
	ANNOUNCE_FAN_OUT = "My fan is gone with the wind.", --------------------------
    ANNOUNCE_COMPASS_OUT = "This compass doesn't point anymore.", --------------------------
	ANNOUNCE_TRAP_WENT_OFF = "Oops.", --------------------------
	ANNOUNCE_UNIMPLEMENTED = "OW! I don't think it's ready yet.", --------------------------
	ANNOUNCE_WORMHOLE = "That was not a sane thing to do.", --------------------------
	ANNOUNCE_CANFIX = "\nI think I can fix this!", --------------------------
	ANNOUNCE_ACCOMPLISHMENT = "I feel so accomplished!", --------------------------
	ANNOUNCE_ACCOMPLISHMENT_DONE = "If only my friends could see me now...", --------------------------	
	ANNOUNCE_INSUFFICIENTFERTILIZER = "Are you still hungry, plant?", --------------------------
	ANNOUNCE_TOOL_SLIP = "Wow that tool is slippery!", --------------------------
	ANNOUNCE_LIGHTNING_DAMAGE_AVOIDED = "Safe from that frightening lightning!", --------------------------

	ANNOUNCE_DAMP = "Oh, water.", --------------------------
	ANNOUNCE_WET = "My clothes appear to be permeable.", --------------------------
	ANNOUNCE_WETTER = "Water way to go!", --------------------------
	ANNOUNCE_SOAKED = "I've nearly reached my saturation point.", --------------------------
	
	ANNOUNCE_BECOMEGHOST = "ooOOoooOOOoOooo!!", --------------------------
	ANNOUNCE_GHOSTDRAIN = "My humanity is about to start slipping away...", --------------------------

	DESCRIBE_SAMECHARACTER = "A tanuki!", --------------------------
	
	BATTLECRY =
	{
		GENERIC = "I'm going to cryofreeze you!",
		PIG = "Gonne have some english beef!",
		PREY = "I will destroy you!", --------------------------
		SPIDER = "You're not allowed to be this big!",
		SPIDER_WARRIOR = "You're no scarier than the others!",
	},
	COMBAT_QUIT =
	{
		GENERIC = "I sure showed him!", --------------------------
		PIG = "I'll let him go. This time.", --------------------------
		PREY = "He's too fast!", --------------------------
		SPIDER = "Bug off!", --------------------------
		SPIDER_WARRIOR = "Take that!", --------------------------
	},
	DESCRIBE =
	{
		GHOSTHAT = "I think this belongs to that one ghost chick.",		
		BERNIE_INACTIVE =
		{
			BROKEN = "It finally fell apart.", --------------------------
			GENERIC = "It's all scorched.", --------------------------
		},
		BERNIE_ACTIVE = "It's moving...",
		
        PLAYER =
        {
            GENERIC = "%s is no match for me!", --------------------------
            ATTACKER = "So %s wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you, loser!", --------------------------
            REVIVER = "%s is a necromancer!", --------------------------
            GHOST = "%s looks pretty dead to me.", --------------------------
        },
		WILSON = 
		{
			GENERIC = "Nice hair dude.", --------------------------
            ATTACKER = "So Wilson wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you, pointy-head!", --------------------------
            REVIVER = "Wilson is a necromancer!", --------------------------
            GHOST = "Wilson looks pretty dead to me.", --------------------------
		},
		WOLFGANG = 
		{
			GENERIC = "Wolfgang is no match for me!", --------------------------
            ATTACKER = "So Wolfgang wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you, big guy!", --------------------------
            REVIVER = "Wolfgang is a necromancer!", --------------------------
            GHOST = "Wolfgang looks pretty dead to me.", --------------------------
		},
		WAXWELL = 
		{
			GENERIC = "Maxwell is no match for me!", --------------------------
            ATTACKER = "So Maxwell wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you, creep!", --------------------------
            REVIVER = "Maxwell is a necromancer!", --------------------------
            GHOST = "Maxwell looks pretty dead to me.", --------------------------
		},
		WX78 = 
		{
			GENERIC = "WX-78 is no match for me!", --------------------------
            ATTACKER = "So WX-78 wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of your shiny metal ass!", --------------------------
            REVIVER = "WX-78 is a necromancer!", --------------------------
            GHOST = "WX-78 looks pretty dead to me.", --------------------------
		},
		WILLOW = 
		{
			GENERIC = "Willow is no match for me!", --------------------------
            ATTACKER = "So Willow wants to fight huh?!", --------------------------
            MURDERER = "You're not melting THIS ice-cube!", --------------------------
            REVIVER = "Willow is a necromancer!", --------------------------
            GHOST = "Willow looks pretty dead to me.", --------------------------
		},
		WENDY = 
		{
			GENERIC = "Wendy is no match for me!", --------------------------
            ATTACKER = "So Wendy wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you or your sister!", --------------------------
            REVIVER = "Wendy is a necromancer!", --------------------------
            GHOST = "Wendy looks pretty dead to me.", --------------------------
		},
		WOODIE = 
		{
			GENERIC = "Woodie is no match for me!", --------------------------
            ATTACKER = "So Woodie wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of beavers!", --------------------------
            REVIVER = "Woodie is a necromancer!", --------------------------
            GHOST = "Woodie looks pretty dead to me.", --------------------------
		},
		WICKERBOTTOM = 
		{
			GENERIC = "Wickerbottom is no match for me!", --------------------------
            ATTACKER = "So Wickerbottom wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of you, old hag!", --------------------------
            REVIVER = "Wickerbottom is a necromancer!", --------------------------
            GHOST = "Wickerbottom looks pretty dead to me.", --------------------------
		},
		WES = 
		{
			GENERIC = "Wes is no match for me!", --------------------------
            ATTACKER = "So Wes wants to fight huh?!", --------------------------
            MURDERER = "I'm not scared of clowns!", --------------------------
            REVIVER = "Wes is a necromancer!", --------------------------
            GHOST = "Wes looks pretty dead to me.", --------------------------
		},
		MULTIPLAYER_PORTAL = "Why would you put eyes on a door?",
        MIGRATION_PORTAL = {
            GENERIC = "If I had any friends, this could take me to them.", --------------------------
            OPEN = "If I step through, will I still be me?", --------------------------
            FULL = "It seems to be popular over there.", --------------------------
        },
		GLOMMER = "It's cute, in a gross kind of way.", --------------------------
		GLOMMERFLOWER = 
		{
			GENERIC = "The petals shimmer in the light.", --------------------------
			DEAD = "The petals droop and shimmer in the light.", --------------------------
		},
		GLOMMERWINGS = "These would look awesome on a helmet!", --------------------------
		GLOMMERFUEL = "This goop smells foul.", --------------------------
		BELL = "Dingalingaling.", --------------------------
		STATUEGLOMMER = 
		{	
			GENERIC = "I'm not sure what that's supposed to be.", --------------------------
			EMPTY = "What a shame.",
		},

		WEBBERSKULL = "Whoa, a skull!", --------------------------
		WORMLIGHT = "Looks delicious.", --------------------------
		WORMLIGHT_LESSER = "Kinda wrinkled.", --------------------------
		WORM =
		{
		    PLANT = "Is that a glowing strawberry?",
		    DIRT = "What's that?",
		    WORM = "It's a worm!", --------------------------
		},
        WORMLIGHT_PLANT = "Seems safe to me.", --------------------------
		MOLE =
		{
			HELD = "Too easy.",
			UNDERGROUND = "You can't hide forever!",
			ABOVEGROUND = "I see free food!",
		},
		MOLEHILL = "It leads to the kingdom of the molemen!",
		MOLEHAT = "A wretched stench but excellent visibility.", --------------------------

		EEL = "This will make a delicious meal.", --------------------------
		EEL_COOKED = "Smells great!", --------------------------
		UNAGI = "I cooked it myself!", --------------------------
		EYETURRET = "I hope it doesn't turn on me.", --------------------------
		EYETURRET_ITEM = "I think it's sleeping.", --------------------------
		MINOTAURHORN = "Wow! I'm glad that didn't gore me!", --------------------------
		MINOTAURCHEST = "It may contain a bigger something fantastic! Or horrible.", --------------------------
		THULECITE_PIECES = "It's some smaller chunks of Thulecite.", --------------------------
		POND_ALGAE = "Some algae by a pond.", --------------------------
		GREENSTAFF = "This will come in handy.", --------------------------
		POTTEDFERN = "A fern in a pot.", --------------------------

		THULECITE = "I wonder where this is from?", --------------------------
		ARMORRUINS = "It's oddly light.", --------------------------
		RUINS_BAT = "It has quite a heft to it.", --------------------------
		RUINSHAT = "Fit for a king. Or me.", --------------------------
		NIGHTMARE_TIMEPIECE =
		{
            CALM = "All is well.", --------------------------
            WARN = "Getting pretty magical around here.", --------------------------
            WAXING = "I think it's becoming more concentrated!", --------------------------
            STEADY = "It seems to be staying steady.", --------------------------
            WANING = "Feels like it's receding.", --------------------------
            DAWN = "The nightmare is almost gone!", --------------------------
            NOMAGIC = "There's no magic around here.", --------------------------
		},
		BISHOP_NIGHTMARE = "It's falling apart!", --------------------------
		ROOK_NIGHTMARE = "Terrifying!", --------------------------
		KNIGHT_NIGHTMARE = "It's a knightmare!", --------------------------
		MINOTAUR = "That thing doesn't look happy.", --------------------------
		SPIDER_DROPPER = "Note to self: Don't look up.", --------------------------
		NIGHTMARELIGHT = "I wonder what function this served.", --------------------------
		NIGHTSTICK = "It's electric!", --------------------------
		GREENGEM = "It's green and gemmy.", --------------------------
		RELIC = "Ancient household goods.", --------------------------
		RUINS_RUBBLE = "This can be fixed.", --------------------------
		MULTITOOL_AXE_PICKAXE = "It's brilliant!", --------------------------
		ORANGESTAFF = "This beats walking.", --------------------------
		YELLOWAMULET = "Warm to the touch.", --------------------------
		GREENAMULET = "Just when I thought I couldn't get any better.", --------------------------
		SLURPERPELT = "Doesn't look much different dead.", --------------------------	

		SLURPER = "It's so hairy!", --------------------------
		SLURPER_PELT = "Doesn't look much different dead.", --------------------------
		ARMORSLURPER = "A soggy, sustaining, succulent suit.", --------------------------
		ORANGEAMULET = "Teleportation can be so useful.", --------------------------
		YELLOWSTAFF = "I put a gem on a stick.", --------------------------
		YELLOWGEM = "This gem is yellow.", --------------------------
		ORANGEGEM = "It's an orange gem.", --------------------------
		TELEBASE = 
		{
			VALID = "It's ready to go.", --------------------------
			GEMS = "It needs more purple gems.", --------------------------
		},
		GEMSOCKET = 
		{
			VALID = "Looks ready.", --------------------------
			GEMS = "It needs a gem.", --------------------------
		},
		STAFFLIGHT = "That seems really dangerous.", --------------------------
	
        ANCIENT_ALTAR = "An ancient and mysterious structure.", --------------------------

        ANCIENT_ALTAR_BROKEN = "This seems to be broken.", --------------------------

        ANCIENT_STATUE = "It seems to throb out of tune with the world.", --------------------------

        LICHEN = "Only a cyanobacteria could grow in this light.", --------------------------
		CUTLICHEN = "Nutritious, but it won't last long.", --------------------------

		CAVE_BANANA = "It's mushy.", --------------------------
		CAVE_BANANA_COOKED = "Yum!", --------------------------
		CAVE_BANANA_TREE = "It's dubiously photosynthetical.", --------------------------
		ROCKY = "It has terrifying claws.", --------------------------
		
		COMPASS =
		{
			GENERIC="Which way am I facing?", --------------------------
			N = "North", --------------------------
			S = "South", --------------------------
			E = "East", --------------------------
			W = "West", --------------------------
			NE = "Northeast", --------------------------
			SE = "Southeast", --------------------------
			NW = "Northwest", --------------------------
			SW = "Southwest", --------------------------
		},

		NIGHTMARE_TIMEPIECE =	-- Duplicated
		{
			WAXING = "I think it's becoming more concentrated!", --------------------------
			STEADY = "It seems to be staying steady.", --------------------------
			WANING = "Feels like it's receding.", --------------------------
			DAWN = "The nightmare is almost gone!", --------------------------
			WARN = "Getting pretty magical around here.", --------------------------
			CALM = "All is well.", --------------------------
			NOMAGIC = "There's no magic around here.", --------------------------
		},

		HOUNDSTOOTH="It's sharp!", --------------------------
		ARMORSNURTLESHELL="It sticks to my back.", --------------------------
		BAT="Ugly flying rat.",
		BATBAT = "Now I can be a vampire!",
		BATWING="They're kinda cool but I prefer my own.",
		BATWING_COOKED="Hey, meat's meat.",
        BATCAVE = "Hole full of ugly flying rats!",
		BEDROLL_FURRY="It's so warm and comfy.", --------------------------
		BUNNYMAN="Big rabbit.",
		FLOWER_CAVE="Oooh, glowing flower!",
		FLOWER_CAVE_DOUBLE="Oooh, glowing flower!",
		FLOWER_CAVE_TRIPLE="Oooh, glowing flower!",
		GUANO="Ew, flying-thing poop!",
		LANTERN="A more civilized light.",
		LIGHTBULB="It's strangely tasty looking.", --------------------------
		MANRABBIT_TAIL="I just like holding it.", --------------------------
		MUSHTREE_TALL = {
            GENERIC = "That mushroom got too big for its own good.", --------------------------
            BLOOM = "You can't tell by looking, but it's smelly.", --------------------------
        },
		MUSHTREE_MEDIUM = {
            GENERIC = "These used to grow in my bathroom.", --------------------------
            BLOOM = "I'm mildly offended by this.", --------------------------
        },
		MUSHTREE_SMALL = {
            GENERIC = "A magic mushroom?", --------------------------
            BLOOM = "It's trying to reproduce.", --------------------------
        },
        MUSHTREE_TALL_WEBBED = "The spiders thought this one was important.", --------------------------
        SPORE_TALL = "It's just drifting around.", --------------------------
        SPORE_MEDIUM = "It's just drifting around.", --------------------------
        SPORE_SMALL = "It's just drifting around.", --------------------------
        SPORE_TALL_INV = "I'll keep a little light in my pocket.", --------------------------
        SPORE_MEDIUM_INV = "I'll keep a little light in my pocket.", --------------------------
        SPORE_SMALL_INV = "I'll keep a little light in my pocket.", --------------------------
		RABBITHOUSE=
		{
			GENERIC = "That's not a real carrot.", --------------------------
			BURNT = "That's not a real roasted carrot.", --------------------------
		},
		SLURTLE="Ew. Just ew.", --------------------------
		SLURTLE_SHELLPIECES="A puzzle with no solution.", --------------------------
		SLURTLEHAT="I hope it doesn't mess up my hair.", --------------------------
		SLURTLEHOLE="A den of 'ew'.", --------------------------
		SLURTLESLIME="If it wasn't useful, I wouldn't touch it.", --------------------------
		SNURTLE="He's less gross, but still gross.", --------------------------
		SPIDER_HIDER="Gah! More spiders!", --------------------------
		SPIDER_SPITTER="I hate spiders!", --------------------------
		SPIDERHOLE="It's encrusted with old webbing.", --------------------------
		STALAGMITE="Looks like a rock to me.", --------------------------
		STALAGMITE_FULL="Looks like a rock to me.", --------------------------
		STALAGMITE_LOW="Looks like a rock to me.", --------------------------
		STALAGMITE_MED="Looks like a rock to me.", --------------------------
		STALAGMITE_TALL="Rocks, rocks, rocks, rocks...", --------------------------
		STALAGMITE_TALL_FULL="Rocks, rocks, rocks, rocks...", --------------------------
		STALAGMITE_TALL_LOW="Rocks, rocks, rocks, rocks...", --------------------------
		STALAGMITE_TALL_MED="Rocks, rocks, rocks, rocks...", --------------------------

		TURF_CARPETFLOOR = "Yet another ground type.", --------------------------
		TURF_CHECKERFLOOR = "Yet another ground type.", --------------------------
		TURF_DIRT = "Yet another ground type.", --------------------------
		TURF_FOREST = "Yet another ground type.", --------------------------
		TURF_GRASS = "Yet another ground type.", --------------------------
		TURF_MARSH = "Yet another ground type.", --------------------------
		TURF_ROAD = "Yet another ground type.", --------------------------
		TURF_ROCKY = "Yet another ground type.", --------------------------
		TURF_SAVANNA = "Yet another ground type.", --------------------------
		TURF_WOODFLOOR = "Yet another ground type.", --------------------------

		TURF_CAVE="Yet another ground type.", --------------------------
		TURF_FUNGUS="Yet another ground type.", --------------------------
		TURF_SINKHOLE="Yet another ground type.", --------------------------
		TURF_UNDERROCK="Yet another ground type.", --------------------------
		TURF_MUD="Yet another ground type.", --------------------------

		TURF_DECIDUOUS = "Yet another ground type.", --------------------------
		TURF_SANDY = "Yet another ground type.", --------------------------
		TURF_BADLANDS = "Yet another ground type.", --------------------------

		POWCAKE = "I don't know if I'm hungry enough.", --------------------------
        CAVE_ENTRANCE = "I wonder if I could move that rock.", --------------------------
        CAVE_ENTRANCE_RUINS = "It's probably hiding something.", --------------------------
        CAVE_ENTRANCE_OPEN = {
            GENERIC = "The earth itself rejects me!", --------------------------
            OPEN = "I bet there's all sorts of things to discover down there.", --------------------------
            FULL = "I'll have to wait until someone leaves.", --------------------------
        },
        CAVE_EXIT = {
            GENERIC = "I'll just stay down here, I suppose.", --------------------------
            OPEN = "I've had enough discovery for now.", --------------------------
            FULL = "The surface is too crowded!", --------------------------
        },
		MAXWELLPHONOGRAPH = "So that's where the music was coming from.", --------------------------
		BOOMERANG = "Aerodynamical!", --------------------------
		PIGGUARD = "I bet you think you're soooo tough don't you?",
		ABIGAIL = "So scary I forgot to scream.",
		ADVENTURE_PORTAL = "I'm not sure I want to fall for that a second time.", --------------------------
		AMULET = "I feel so safe when I'm wearing it.", --------------------------
		ANIMAL_TRACK = "Tracks left by food. I mean... an animal.", --------------------------
		ARMORGRASS = "I hope there are no bugs in this.", --------------------------
		ARMORMARBLE = "This looks really heavy.", --------------------------
		ARMORWOOD = "That is a perfectly reasonable piece of clothing.", --------------------------
		ARMOR_SANITY = "Wearing this makes me feel safe and insecure.", --------------------------
		ASH =
		{
			GENERIC = "All that's left after fire has done its job.", --------------------------
			REMAINS_GLOMMERFLOWER = "The flower was consumed by fire when I teleported!", --------------------------
			REMAINS_EYE_BONE = "The eyebone was consumed by fire when I teleported!", --------------------------
			REMAINS_THINGIE = "This was once some thing before it got burned...", --------------------------
		},
		AXE = "Now I can be an axe murderer!",
		BABYBEEFALO = "Awwww. So cute!", --------------------------
		BACKPACK = "It's for me to put my stuff in.", --------------------------
		BACONEGGS = "I cooked it myself!", --------------------------
		BANDAGE = "Seems sterile enough.", --------------------------
		BASALT = "That's too strong to break through!", --------------------------
		BATBAT =  "Now I can be a vampire!", --------------------------	-- Duplicated
		BEARDHAIR = "I made them with my face.", --------------------------
		BEARGER = "What a bear of a badger.", --------------------------
		BEARGERVEST = "Welcome to hibernation station!", --------------------------
		ICEPACK = "The fur keeps the temperature inside stable.", --------------------------
		BEARGER_FUR = "A mat of thick fur.", --------------------------
		BEDROLL_STRAW = "It smells like wet.", --------------------------
		BEE =
		{
			GENERIC = "To bee or not to bee.", --------------------------
			HELD = "Careful!", --------------------------
		},
		BEEBOX =
		{
			READY = "It's full of honey.", --------------------------
			FULLHONEY = "It's full of honey.", --------------------------
			GENERIC = "Bees!", --------------------------
			NOHONEY = "It's empty.", --------------------------
			SOMEHONEY = "I should wait a bit.", --------------------------
			BURNT = "How did it get burned?!!", --------------------------
		},
		BEEFALO =
		{
			FOLLOWER = "He's coming along peacefully.", --------------------------
			GENERIC = "It's a beefalo!", --------------------------
			NAKED = "Aww, he's so sad.", --------------------------
			SLEEPING = "These guys are really heavy sleepers.", --------------------------
		},
		BEEFALOHAT = "What a nice hat.", --------------------------
		BEEFALOWOOL = "It smells like beefalo tears.", --------------------------
		BEEHAT = "This should keep me protected.", --------------------------
		BEEHIVE = "It's buzzing with activity.", --------------------------
		BEEMINE = "It buzzes when I shake it.", --------------------------
		BEEMINE_MAXWELL = "Bottled mosquito rage!", --------------------------
		BERRIES = "Red berries taste the best.", --------------------------
		BERRIES_COOKED = "I don't think heat improved them.", --------------------------
		BERRYBUSH =
		{
			BARREN = "I think it needs to be fertilized.", --------------------------
			WITHERED = "Nothing will grow in this heat.", --------------------------
			GENERIC = "Red berries taste the best.", --------------------------
			PICKED = "Maybe they'll grow back?", --------------------------
		},
		BIGFOOT = "That is one biiig foot.", --------------------------
		BIRDCAGE =
		{
			GENERIC = "I should put a bird in it.", --------------------------
			OCCUPIED = "That's my bird!", --------------------------
			SLEEPING = "Awwww, he's asleep.", --------------------------
			HUNGRY = "He's looking a bit peckish.", --------------------------
			STARVING = "Did I forget to feed you?", --------------------------
			DEAD = "Maybe he's just resting?", --------------------------
			SKELETON = "That bird is definitely deceased.", --------------------------
		},
		BIRDTRAP = "Gives me a net advantage!", --------------------------
		BIRD_EGG = "A small, normal egg.", --------------------------
		BIRD_EGG_COOKED = "Sunny side yum!", --------------------------
		BISHOP = "I thought I got away from all the religious nutcases when I left gensokyo!",
		BLOWDART_FIRE = "Fire's not really my style.",
		BLOWDART_SLEEP = "Just don't breathe in.", --------------------------
		BLOWDART_PIPE = "Good practice for my birthday cake!", --------------------------
		BLUEAMULET = "Cool as ice!", --------------------------
		BLUEGEM = "It sparkles with cold energy.", --------------------------
		BLUEPRINT = "It's scientific!", --------------------------
		BELL_BLUEPRINT = "It's scientific!", --------------------------
		BLUE_CAP = "It's weird and gooey.", --------------------------
		BLUE_CAP_COOKED = "It's different now...", --------------------------
		BLUE_MUSHROOM =
		{
			GENERIC = "It's a mushroom.", --------------------------
			INGROUND = "It's sleeping.", --------------------------
			PICKED = "I wonder if it will come back?", --------------------------
		},
		BOARDS = "Boards.", --------------------------
		BOAT = "Is that how I got here?", --------------------------
		BONESHARD = "Bits of bone.", --------------------------
		BONESTEW = "Can I even eat this much food?!",
		BUGNET = "The tables have turned.",
		BUSHHAT = "It's kind of scratchy.", --------------------------
		BUTTER = "I can't believe it's butter!", --------------------------
		BUTTERFLY =
		{
			GENERIC = "It's got some nice wings.",
			HELD = "You are mine!",
		},
		BUTTERFLYMUFFIN = "Not a fairy muffin.",
		BUTTERFLYWINGS = "... but my wings are still better!",
		BUZZARD = "What a bizarre buzzard!", --------------------------
		CACTUS = 
		{
			GENERIC = "Sharp but delicious.", --------------------------
			PICKED = "Deflated, but still spiny.", --------------------------
		},
		CACTUS_MEAT_COOKED = "Grilled fruit of the desert.", --------------------------
		CACTUS_MEAT = "There are still some spines between me and a tasty meal.", --------------------------
		CACTUS_FLOWER = "A pretty flower from a prickly plant.", --------------------------

		COLDFIRE =
		{
			EMBERS = "I should put something on the fire before it goes out.", --------------------------
			GENERIC = "Sure beats darkness.", --------------------------
			HIGH = "That fire is getting out of hand!", --------------------------
			LOW = "The fire's getting a bit low.", --------------------------
			NORMAL = "Nice and comfy.", --------------------------
			OUT = "Well, that's over.", --------------------------
		},
		CAMPFIRE =
		{
			EMBERS = "I should put something on the fire before it goes out.", --------------------------
			GENERIC = "Sure beats darkness.", --------------------------
			HIGH = "That fire is getting out of hand!", --------------------------
			LOW = "The fire's getting a bit low.", --------------------------
			NORMAL = "Nice and comfy.", --------------------------
			OUT = "Well, that's over.", --------------------------
		},
		CANE = "It makes walking seem much easier!", --------------------------
		CATCOON = "A playful little thing.", --------------------------
		CATCOONDEN = 
		{
			GENERIC = "It's a den in a stump.", --------------------------
			EMPTY = "Its owner ran out of lives.", --------------------------
		},
		CATCOONHAT = "Ears hat!", --------------------------
		COONTAIL = "I think it's still swishing.", --------------------------
		CARROT = "Yuck, it's all carroty.",
		CARROT_COOKED = "So boring.",
		CARROT_PLANTED = "I think that's a carrot?",
		CARROT_SEEDS = "It's a seed.", --------------------------
		WATERMELON_SEEDS = "It's a seed.", --------------------------
		CAVE_FERN = "It's a fern.", --------------------------
		CHARCOAL = "What's left when you try to melt trees.",
        CHESSJUNK1 = "A pile of broken chess pieces.", --------------------------
        CHESSJUNK2 = "Another pile of broken chess pieces.", --------------------------
        CHESSJUNK3 = "Even more broken chess pieces.", --------------------------
		CHESTER = "It had better not try to eat me.",
		CHESTER_EYEBONE =
		{
			GENERIC = "It's looking at me.", --------------------------
			WAITING = "It went to sleep.", --------------------------
		},
		COOKEDMANDRAKE = "This should shut it up.",
		COOKEDMEAT = "Steak!",
		COOKEDMONSTERMEAT = "It's still purple...",
		COOKEDSMALLMEAT = "Meat nuggets.",
		COOKPOT =
		{
			COOKING_LONG = "This is going to take a while.", --------------------------
			COOKING_SHORT = "It's almost done!", --------------------------
			DONE = "Mmmmm! It's ready to eat!", --------------------------
			EMPTY = "It makes me hungry just to look at it.", --------------------------
			BURNT = "The pot got cooked.", --------------------------
		},
		CORN = "I guess corn is okay.",
		CORN_COOKED = "Popcorn, but no movies to watch.",
		CORN_SEEDS = "It's a seed.", --------------------------
		CROW =
		{
			GENERIC = "Stupid bird.",
			HELD = "You're mine now sucka.",
		},
		CUTGRASS = "Why do I need this? I'm not a cow.",
		CUTREEDS = "A whole bunch of little straws!",
		CUTSTONE = "I punched them into squares!",
		DEADLYFEAST = "I can totally eat this!",
		DEERCLOPS = "ICE TO ICE COMBAT!",
		DEERCLOPS_EYEBALL = "Not so scary now are ya?",
		EYEBRELLAHAT =	"I'm wearing a deer eye on my head!",
		DEPLETED_GRASS =
		{
			GENERIC = "It's dead.",
		},
		DEVTOOL = "It smells of bacon!", --------------------------
		DEVTOOL_NODEV = "I'm not strong enough to wield it.", --------------------------
		DIRTPILE = "Is that a turd?",
		DIVININGROD =
		{
			COLD = "The signal is very faint.", --------------------------
			GENERIC = "It's some kind of homing device.", --------------------------
			HOT = "This thing's going crazy!", --------------------------
			WARM = "I'm headed in the right direction.", --------------------------
			WARMER = "I must be getting pretty close.", --------------------------
		},
		DIVININGRODBASE =
		{
			GENERIC = "I wonder what it does.", --------------------------
			READY = "It looks like it needs a large key.", --------------------------
			UNLOCKED = "Now my machine can work!", --------------------------
		},
		DIVININGRODSTART = "That rod looks useful!", --------------------------
		DRAGONFLY = "That's one fly dragon!", --------------------------
		ARMORDRAGONFLY = "Hot mail!", --------------------------
		DRAGON_SCALES = "They're still warm.", --------------------------
		DRAGONFLYCHEST = "Next best thing to a lockbox!", --------------------------
		LAVASPIT = 
		{
			HOT = "Hot spit!", --------------------------
			COOL = "I like to call it 'Basaliva'.", --------------------------
		},

		LAVAE = "Too hot to handle.", --------------------------
		LAVAE_PET = 
		{
			STARVING = "Poor thing must be starving.", --------------------------
			HUNGRY = "I hear a tiny stomach grumbling.", --------------------------
			CONTENT = "It seems happy.", --------------------------
			GENERIC = "Aww. Who's a good monster?", --------------------------
		},
		LAVAE_EGG = 
		{
			GENERIC = "I can feel a faint warmth coming from inside.", --------------------------
		},
		LAVAE_EGG_CRACKED =
		{
			COLD = "I don't think that egg is warm enough.", --------------------------
			COMFY = "I never thought I would see a happy egg.", --------------------------
		},
		LAVAE_TOOTH = "It's an egg tooth!", --------------------------

		DRAGONFRUIT = "What a weird fruit.", --------------------------
		DRAGONFRUIT_COOKED = "Still weird.", --------------------------
		DRAGONFRUIT_SEEDS = "It's a seed.", --------------------------
		DRAGONPIE = "Nice!",
		DRUMSTICK = "Now that bird can actually be useful!",
		DRUMSTICK_COOKED = "Now it's even tastier.", --------------------------
		DUG_BERRYBUSH = "I should plant this.", --------------------------
		DUG_GRASS = "I should plant this.", --------------------------
		DUG_MARSH_BUSH = "I should plant this.", --------------------------
		DUG_SAPLING = "I should plant this.", --------------------------
		DURIAN = "Oh.. a durian...",
		DURIAN_COOKED = "Now it smells even worse!", --------------------------
		DURIAN_SEEDS = "It's a seed.", --------------------------
		EARMUFFSHAT = "At least my ears won't get cold...", --------------------------
		EGGPLANT = "It doesn't look like an egg.", --------------------------
		EGGPLANT_COOKED = "It's even less eggy.", --------------------------
		EGGPLANT_SEEDS = "It's a seed.", --------------------------
		DECIDUOUSTREE = 
		{
			BURNING = "I'm not a fire type but I can still admire a good blaze!",
			BURNT = "Totally, like, ruined.",
			CHOPPED = "Now it's dead!",
			GENERIC = "Some fairies like to live in trees. You know, the lame ones.",
		},
		ACORN = "This looks like it would hurt if you threw it at someone.",
        ACORN_SAPLING = "Grow faster so I can eat your babies!",
		ACORN_COOKED = "Much better!",
		BIRCHNUTDRAKE = "It must be mad because I ate its brothers.",
		EVERGREEN =
		{
			BURNING = "I'm not a fire type but I can still admire a good blaze!",
			BURNT = "Totally, like, ruined.",
			CHOPPED = "Now it's dead!",
			GENERIC = "What am I supposed to say? It's a tree."
		},
		EVERGREEN_SPARSE =
		{
			BURNING = "I'm not a fire type but I can still admire a good blaze!",
			BURNT = "Totally, like, ruined.",
			CHOPPED = "Now it's dead!",
			GENERIC = "Yay, a tree that looks slightly different.",
		},
		EYEPLANT = "I think I'm being watched.", --------------------------
		FARMPLOT =
		{
			GENERIC = "A place to make food!", --------------------------
			GROWING = "Go plants go!", --------------------------
			NEEDSFERTILIZER = "It looks hungry.",
			BURNT = "I don't think anything will grow in a pile of ash.", --------------------------
		},
		FEATHERHAT = "I AM A BIRD!", --------------------------
		FEATHER_CROW = "A crow feather.", --------------------------
		FEATHER_ROBIN = "A redbird feather.", --------------------------
		FEATHER_ROBIN_WINTER = "A snowbird feather.", --------------------------
		FEM_PUPPET = "She's trapped!", --------------------------
		FIREFLIES =
		{
			GENERIC = "If only I could catch them!", --------------------------
			HELD = "They make my pocket glow!", --------------------------
		},
		FIREHOUND = "That one is glowy.", --------------------------
		FIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.", --------------------------
			GENERIC = "Sure beats darkness.", --------------------------
			HIGH = "Good thing it's contained!", --------------------------
			LOW = "The fire's getting a bit low.", --------------------------
			NORMAL = "Nice and comfy.", --------------------------
			OUT = "At least I can start it up again.", --------------------------
		},
		COLDFIREPIT =
		{
			EMBERS = "I should put something on the fire before it goes out.", --------------------------
			GENERIC = "Sure beats darkness.", --------------------------
			HIGH = "Good thing it's contained!", --------------------------
			LOW = "The fire's getting a bit low.", --------------------------
			NORMAL = "Nice and comfy.", --------------------------
			OUT = "At least I can start it up again.", --------------------------
		},
		FIRESTAFF = "I don't want to set the world on fire.", --------------------------
		FIRESUPPRESSOR = 
		{	
			ON = "Fling on!", --------------------------
			OFF = "All quiet on the flinging front.", --------------------------
			LOWFUEL = "The fuel tank is getting a bit low.", --------------------------
		},

		FISH = "Now I shall eat for a day.", --------------------------
		FISHINGROD = "Hook, line and stick!", --------------------------
		FISHSTICKS = "These haven't even been frozen yet.",
		FISHTACOS = "Fish sandwich, kinda.",
		FISH_COOKED = "Grilled to perfection.", --------------------------
		FLINT = "It's a very sharp rock.", --------------------------
		FLOWER = "Flowers!",
        FLOWER_WITHERED = "I don't think it got enough sun.", --------------------------
		FLOWERHAT = "It smells like prettiness.", --------------------------
		FLOWER_EVIL = "That's an ugly flower.",
		FOLIAGE = "Some leafy greens.", --------------------------
		FOOTBALLHAT = "I've turned my opponent into a hat!",
		FROG =
		{
			DEAD = "He's croaked it.", --------------------------
			GENERIC = "I see a popsicle!",
			SLEEPING = "Now's the time to strike!",
		},
		FROGGLEBUNWICH = "Second best thing to do with a frog!",
		FROGLEGS = "No point freezing a frog that's already dead.",
		FROGLEGS_COOKED = "Tastes like chicken.", --------------------------
		FRUITMEDLEY = "I cooked it myself!", --------------------------
		FURTUFT = "Black and white fur.", -------------------------- 
		GEARS = "A pile of mechanical parts.", --------------------------
		GHOST = "I ain't scared of no ghost!",
		GOLDENAXE = "That's one fancy axe.", --------------------------
		GOLDENPICKAXE = "Hey, isn't gold really soft?", --------------------------
		GOLDENPITCHFORK = "Why did I even make a pitchfork this fancy?", --------------------------
		GOLDENSHOVEL = "I can't wait to dig holes.", --------------------------
		GOLDNUGGET = "I can't eat it, but it sure is shiny.", --------------------------
		GRASS =
		{
			BARREN = "It needs poop.", --------------------------
			WITHERED = "It's not going to grow back while it's so hot.", --------------------------
			BURNING = "That's burning fast!", --------------------------
			GENERIC = "It's a tuft of grass.", --------------------------
			PICKED = "It was cut down in the prime of its life.", --------------------------
		},
		GREEN_CAP = "It seems pretty normal.", --------------------------
		GREEN_CAP_COOKED = "It's different now...", --------------------------
		GREEN_MUSHROOM =
		{
			GENERIC = "It's a mushroom.", --------------------------
			INGROUND = "It's sleeping.", --------------------------
			PICKED = "I wonder if it will come back?", --------------------------
		},
		GUNPOWDER = "It looks like pepper.", --------------------------
		HAMBAT = "I can't believe I'm wasting perfectly good food like this.", -----------------------
		HAMMER = "Stop! It's time! To hammer things!", --------------------------
		HEALINGSALVE = "The stinging means that it's working.", --------------------------
		HEATROCK =
		{
			FROZEN = "It's colder than ice.", --------------------------
			COLD = "That's a cold stone.", --------------------------
			GENERIC = "I could manipulate its temperature.", --------------------------
			WARM = "It's quite warm and cuddly... for a rock!", --------------------------
			HOT = "Nice and toasty hot!", --------------------------
		},
		HOME = "Someone must live here.", --------------------------
		HOMESIGN =
		{
			GENERIC = "It says 'You are here'.", --------------------------
            UNWRITTEN = "The sign is currently blank.", --------------------------
			BURNT = "\"Don't play with matches.\"", --------------------------
		},
		ARROWSIGN_POST =
		{
			GENERIC = "It says 'Thataway'.", --------------------------
            UNWRITTEN = "The sign is currently blank.", --------------------------
			BURNT = "\"Don't play with matches.\"", --------------------------
		},
		ARROWSIGN_PANEL =
		{
			GENERIC = "It says 'Thataway'.", --------------------------
            UNWRITTEN = "The sign is currently blank.", --------------------------
			BURNT = "\"Don't play with matches.\"", --------------------------
		},
		HONEY = "Looks delicious!", --------------------------
		HONEYCOMB = "Bees used to live in this.", --------------------------
		HONEYHAM = "Meat! Covered in honey!",
		HONEYNUGGETS = "Meat nuggets! Covered in honey!",
		HORN = "Cow headspike.",
		HOUND = "That thing looks mean!",
		HOUNDBONE = "Bones.",
		HOUNDMOUND = "Bonecastle!",
		ICEBOX = "I can't just carry all my food forever.",
		ICEHAT = "Stay cool, boy.", --------------------------
		ICEHOUND = "I like this one!",
		INSANITYROCK =
		{
			ACTIVE = "TAKE THAT, SANE SELF!", --------------------------
			INACTIVE = "It's more of a pyramid than an obelisk.", --------------------------
		},
		JAMMYPRESERVES = "I cooked it myself!", --------------------------
		KABOBS = "Stabbing with the chopsticks is cheating!",
		KILLERBEE =
		{
			GENERIC = "Angry bee!",
			HELD = "It looks even angrier now!",
		},
		KNIGHT = "A metal horse!",
		KOALEFANT_SUMMER = "Adorably delicious.", --------------------------
		KOALEFANT_WINTER = "It looks warm and full of meat.", --------------------------
		KRAMPUS = "Did he come from hell?",
		KRAMPUS_SACK = "Ew. It has Krampus slime all over it.", --------------------------
		LEIF = "THAT TREE LEARNED TO WALK!",
		LEIF_SPARSE = "THAT TREE LEARNED TO WALK!",
		LIGHTNING_ROD =
		{
			CHARGED = "The power is mine!", --------------------------
			GENERIC = "I can harness the heavens!", --------------------------
		},
		LIGHTNINGGOAT = 
		{
			GENERIC = "'Baaaah' yourself!", --------------------------
			CHARGED = "I don't think it liked being struck by lightning.", --------------------------
		},
		LIGHTNINGGOATHORN = "It's like a miniature lightning rod.", --------------------------
		GOATMILK = "It's buzzing with tastiness!", --------------------------
		LITTLE_WALRUS = "He won't be cute and cuddly forever.", --------------------------
		LIVINGLOG = "It looks worried.", --------------------------
		LOG =
		{
			BURNING = "That's some hot wood!", --------------------------
			GENERIC = "It's big, it's heavy, and it's wood.", --------------------------
		},
		LUREPLANT = "It's so alluring.", --------------------------
		LUREPLANTBULB = "Now I can start my very own meat farm.", --------------------------
		MALE_PUPPET = "He's trapped!", --------------------------

		MANDRAKE_ACTIVE = "SHUT UP!",
		MANDRAKE_PLANTED = "Oh, a weed.",
		MANDRAKE = "It has a face, hehehehe!",

		MANDRAKESOUP = "I cooked it myself!", --------------------------
		MARBLE = "Fancy!", --------------------------
		MARBLEPILLAR = "I think I could use that.", --------------------------
		MARBLETREE = "I don't think an axe will cut it.", --------------------------
		MARSH_BUSH =
		{
			BURNING = "That's burning fast!", --------------------------
			GENERIC = "It looks thorny.", --------------------------
			PICKED = "That hurt.", --------------------------
		},
		BURNT_MARSH_BUSH = "It's all burnt up.", --------------------------
		MARSH_PLANT = "It's a plant.", --------------------------
		MARSH_TREE =
		{
			BURNING = "Spikes and fire!", --------------------------
			BURNT = "Now it's burnt and spiky.", --------------------------
			CHOPPED = "Not so spiky now!", --------------------------
			GENERIC = "Those spikes look sharp!", --------------------------
		},
		MAXWELL = "I hate that guy.", --------------------------
		MAXWELLHEAD = "I can see into his pores.", --------------------------
		MAXWELLLIGHT = "I wonder how they work.", --------------------------
		MAXWELLLOCK = "Looks almost like a key hole.", --------------------------
		MAXWELLTHRONE = "That doesn't look very comfortable.", --------------------------
		MEAT = "It's a bit gamey, but it'll do.", --------------------------
		MEATBALLS = "I cooked it myself!", --------------------------
		MEATRACK =
		{
			DONE = "Jerky time!", --------------------------
			DRYING = "Meat takes a while to dry.", --------------------------
			DRYINGINRAIN = "Meat takes even longer to dry in rain.", --------------------------
			GENERIC = "I should dry some meats.", --------------------------
			BURNT = "The rack got dried.", --------------------------
		},
		MEAT_DRIED = "Just jerky enough.", --------------------------
		MERM = "Smells fishy!", --------------------------
		MERMHEAD = 
		{
			GENERIC = "Fish-kabob!",
			BURNT = "Burnt merm flesh somehow smells even worse.", --------------------------
		},
		MERMHOUSE = 
		{
			GENERIC = "Who would live here?", --------------------------
			BURNT = "Nothing to live in, now.", --------------------------
		},
		MINERHAT = "This will keep my hands free.", --------------------------
		MONKEY = "Curious little guy.", --------------------------
		MONKEYBARREL = "Did that just move?", --------------------------
		MONSTERLASAGNA = "I never thought I'd see a meal I didn't want to eat.", --------------------------
		FLOWERSALAD = "A bowl of foliage.", --------------------------
        ICECREAM = "I scream for ice cream!", --------------------------
        WATERMELONICLE = "Cryogenic watermelon.", --------------------------
        TRAILMIX = "A healthy, natural snack.", --------------------------
        HOTCHILI = "Five alarm!", --------------------------
        GUACAMOLE = "Avogadro's favorite dish.", --------------------------
		MONSTERMEAT = "Ew, it's all purple!",
		MONSTERMEAT_DRIED = "Gross meat times jerky equals.. almost good enough?",
		MOOSE = "I don't exactly know what that thing is.", --------------------------
		MOOSEEGG = "Its contents are like excited electrons trying to escape.", --------------------------
		MOSSLING = "Aaah! You are definitely not an electron!", --------------------------
		FEATHERFAN = "Down to bring my temperature down.", --------------------------
        MINIFAN = "Somehow the breeze comes out the back twice as fast.", --------------------------
		GOOSE_FEATHER = "Fluffy!", --------------------------
		STAFF_TORNADO = "Spinning doom.", --------------------------
		MOSQUITO =
		{
			GENERIC = "Disgusting little bloodsucker.", --------------------------
			HELD = "Hey, is that my blood?", --------------------------
		},
		MOSQUITOSACK = "It's probably not someone else's blood...", --------------------------
		MOUND =
		{
			DUG = "I should probably feel bad about that.", --------------------------
			GENERIC = "I bet there's all sorts of good stuff down there!", --------------------------
		},
		NIGHTLIGHT = "It gives off a spooky light.", --------------------------
		NIGHTMAREFUEL = "This stuff is crazy!", --------------------------
		NIGHTSWORD = "I dreamed it myself!", --------------------------
		NITRE = "I'm not a geologist.", --------------------------
		ONEMANBAND = "I should have added a beefalo bell.", --------------------------
		PANDORASCHEST = "It may contain something fantastic! Or horrible.", --------------------------
		PANFLUTE = "I can serenade the animals.", --------------------------
		PAPYRUS = "Some sheets of paper.", --------------------------
		PENGUIN = "Must be breeding season.", --------------------------
		PERD = "Stupid bird! Stay away from my berries!", --------------------------
		PEROGIES = "I cooked it myself!", --------------------------
		PETALS = "I showed those flowers who's boss!", --------------------------
		PETALS_EVIL = "I'm not sure I want to hold these.", --------------------------
		PHLEGM = "It's thick and pliable. And salty.", --------------------------
		PICKAXE = "Rock smasher!",
		PIGGYBACK = "I feel kinda bad for that.", --------------------------
		PIGHEAD = 
		{	
			GENERIC = "Pig-kabob!",
			BURNT = "Crispy.", --------------------------
		},
		PIGHOUSE =
		{
			FULL = "I can see a snout pressed up against the window.", --------------------------
			GENERIC = "These pigs have pretty fancy houses.", --------------------------
			LIGHTSOUT = "Come ON! I know you're home!", --------------------------
			BURNT = "Not so fancy now, pig!", --------------------------
		},
		PIGKING = "Sup fatso!",
		PIGMAN =
		{
			DEAD = "He wasn't strong enough.",
			FOLLOWER = "Yeah, you listen to ME now!",
			GENERIC = "That pig has fists!",
			GUARD = "You wanna fite bub?!",
			WEREPIG = "He hulked out!",
		},
		PIGSKIN = "Hee hee,  pigs have funny tails.",
		PIGTENT = "Smells like bacon.", --------------------------
		PIGTORCH = "Sure looks cozy.", --------------------------
		PINECONE = "I can hear a tiny tree inside it, trying to get out.", --------------------------
        PINECONE_SAPLING = "It'll be a tree soon!", --------------------------
        LUMPY_SAPLING = "How did this tree even reproduce?", --------------------------
		PITCHFORK = "Maxwell might be looking for this.", --------------------------
		PLANTMEAT = "That doesn't look very appealing.", --------------------------
		PLANTMEAT_COOKED = "At least it's warm now.", --------------------------
		PLANT_NORMAL =
		{
			GENERIC = "Leafy!", --------------------------
			GROWING = "Guh! It's growing so slowly!", --------------------------
			READY = "Mmmm. Ready to harvest.", --------------------------
			WITHERED = "The heat killed it.", --------------------------
		},
		POMEGRANATE = "It looks like the inside of an alien's brain.", --------------------------
		POMEGRANATE_COOKED = "Haute Cuisine!", --------------------------
		POMEGRANATE_SEEDS = "It's a seed.", --------------------------
		POND = "I can't see the bottom!", --------------------------
		POOP = "I should fill my pockets!", --------------------------
		FERTILIZER = "That is definitely a bucket full of poop.", --------------------------
		PUMPKIN = "It's as big as my head!", --------------------------
		PUMPKINCOOKIE = "I cooked it myself!", --------------------------
		PUMPKIN_COOKED = "How did it not turn into a pie?", --------------------------
		PUMPKIN_LANTERN = "Spooky!", --------------------------
		PUMPKIN_SEEDS = "It's a seed.", --------------------------
		PURPLEAMULET = "It's whispering to me.", --------------------------
		PURPLEGEM = "It contains the mysteries of the universe.", --------------------------
		RABBIT =
		{
			GENERIC = "How lame, it can't even shoot bullets.",
			HELD = "Oh ho ho, I've got plans for you!",
		},
		RABBITHOLE = 
		{
			GENERIC = "That must lead to the Kingdom of the Bunnymen.", --------------------------
			SPRING = "The Kingdom of the Bunnymen is closed for the season.", --------------------------
		},
		RAINOMETER = 
		{	
			GENERIC = "It measures cloudiness.", --------------------------
			BURNT = "The measuring parts went up in a cloud of smoke.", --------------------------
		},
		RAINCOAT = "Keeps the rain where it ought to be. Outside my body.", --------------------------
		RAINHAT = "It'll mess up my hair, but I'll stay nice and dry.", --------------------------
		RATATOUILLE = "I cooked it myself!", --------------------------
		RAZOR = "A sharpened rock tied to a stick. Hygienic!", --------------------------
		REDGEM = "It sparkles with inner warmth.", --------------------------
		RED_CAP = "It smells funny.", --------------------------
		RED_CAP_COOKED = "It's different now...", --------------------------
		RED_MUSHROOM =
		{
			GENERIC = "It's a mushroom.", --------------------------
			INGROUND = "It's sleeping.", --------------------------
			PICKED = "I wonder if it will come back?", --------------------------
		},
		REEDS =
		{
			BURNING = "That's really burning!", --------------------------
			GENERIC = "It's a clump of reeds.", --------------------------
			PICKED = "I picked all the useful reeds.", --------------------------
		},
        RELIC = 
        {
            GENERIC = "Ancient household goods.", --------------------------
            BROKEN = "Nothing to work with here.", --------------------------
        },
        RUINS_RUBBLE = "This can be fixed.", --------------------------
        RUBBLE = "Just bits and pieces of rock.", --------------------------
		RESEARCHLAB = 
		{	
			GENERIC = "What have I created?!",
			BURNT = "Got too smart for its own good.",
		},
		RESEARCHLAB2 = 
		{
			GENERIC = "This thing makes my brain hurt.",
			BURNT = "I didn't need it anyway.",
		},
		RESEARCHLAB3 = 
		{
			GENERIC = "What have I created?", --------------------------
			BURNT = "Whatever it was, it's burnt now.", --------------------------
		},
		RESEARCHLAB4 = 
		{
			GENERIC = "Who would name something that?", --------------------------
			BURNT = "Fire doesn't really solve naming issues...", --------------------------
		},
		RESURRECTIONSTATUE = 
		{
			GENERIC = "What a handsome devil!", --------------------------
			BURNT = "Not much use anymore.", --------------------------
		},		
		RESURRECTIONSTONE = "Such a touching stone.", --------------------------
		ROBIN =
		{
			GENERIC = "Does that mean winter is gone?", --------------------------
			HELD = "He likes my pocket.", --------------------------
		},
		ROBIN_WINTER =
		{
			GENERIC = "Life in the frozen wastes.", --------------------------
			HELD = "It's so soft.", --------------------------
		},
		ROBOT_PUPPET = "It's trapped!", --------------------------
		ROCK_LIGHT =
		{
			GENERIC = "A crusted over lava pit.", --------------------------
			OUT = "Looks fragile.", --------------------------
			LOW = "The lava's crusting over.", --------------------------
			NORMAL = "Nice and comfy.", --------------------------
		},
		ROCK = "I bet I can smash that!",
		ROCK_ICE = 
		{
			GENERIC = "Way better than some dumb rock.",
			MELTED = "Awww, it's gone.",
		},
		ROCK_ICE_MELTED = "Awww, it's gone.",
		
		ICE = "I'm not making any ice puns.",
		ICESPEAR = "Even better than my fists!",
		ICEAXE = "No tree is safe!",
		ICEPICKAXE = "Ice is great for breaking stuff!",
		ICEHAMMER = "Smash smash!",
		ICICLE = "My favorite weapon!",
		
		ROCKS = "I can make stuff with these.", --------------------------
        ROOK = "I don't know what that is but it looks like a worthy opponent!",
		ROPE = "Some short lengths of rope.", --------------------------
		ROTTENEGG = "Aw, it's no good now.", --------------------------
		SANITYROCK =
		{
			ACTIVE = "That's a CRAZY looking rock!", --------------------------
			INACTIVE = "Where did the rest of it go?", --------------------------
		},
		SAPLING =
		{
			BURNING = "That's burning fast!", --------------------------
			WITHERED = "It might be okay if it was cooler.", --------------------------
			GENERIC = "Baby trees are so cute!", --------------------------
			PICKED = "That'll teach him.", --------------------------
		},
		SEEDS = "Each one is a tiny mystery.", --------------------------
		SEEDS_COOKED = "I cooked all the life out of 'em!", --------------------------
		SEWING_KIT = "Darn it! Darn it all to heck!", --------------------------
		SHOVEL = "There's a lot going on underground.", --------------------------
		SILK = "It came out of a spider's butt.",
		SKELETON = "Dead guy.",
		SCORCHED_SKELETON = "Roasted.",
		SKULLCHEST = "I'm not sure if I want to open it.", --------------------------
		SMALLBIRD =
		{
			GENERIC = "That's a rather small bird.", --------------------------
			HUNGRY = "It looks hungry.", --------------------------
			STARVING = "It must be starving.", --------------------------
		},
		SMALLMEAT = "Meat bits.",
		SMALLMEAT_DRIED = "A little jerky.", --------------------------
		SPAT = "What a crusty looking animal.", --------------------------
		SPEAR = "That's one pointy stick.", --------------------------
		SPIDER =
		{
			DEAD = "Squished!",
			GENERIC = "That's a big freaking spider!",
			SLEEPING = "It's not safe to sleep in the sun mister spider!",
		},
		SPIDERDEN = "Whoa, there are spiders in there!",
		SPIDEREGGSACK = "I got spider babies!",
		SPIDERGLAND = "Spider guts!",
		SPIDERHAT = "Now I can be a spider too!",
		SPIDERQUEEN = "Whoa, that one's even bigger!!",
		SPIDER_WARRIOR =
		{
			DEAD = "Not strong enough!",
			GENERIC = "This one's even stronger!",
			SLEEPING = "I feel like I'd be cheating if I killed it like this.",
		},
		SPOILED_FOOD = "Yuck, it's all furry.",
		STATUEHARP = "What has happened to the head?", --------------------------
		STATUEMAXWELL = "It really captures his personality.", --------------------------
		STEELWOOL = "Scratchy metal fibers.", --------------------------
		STINGER = "Looks sharp!", --------------------------
		STRAWHAT = "What a nice hat.", --------------------------
		STUFFEDEGGPLANT = "I cooked it myself!", --------------------------
		SUNKBOAT = "It's no use to me out there!", --------------------------
		SWEATERVEST = "This vest is dapper as all get-out.", --------------------------
		REFLECTIVEVEST = "Keep off, evil sun!", --------------------------
		HAWAIIANSHIRT = "It's not lab-safe!", --------------------------
		TAFFY = "I cooked it myself!", --------------------------
		TALLBIRD = "That's a tall bird!", --------------------------
		TALLBIRDEGG = "Will it hatch?", --------------------------
		TALLBIRDEGG_COOKED = "Delicious and nutritional.", --------------------------
		TALLBIRDEGG_CRACKED =
		{
			COLD = "Brrrr!", --------------------------
			GENERIC = "Looks like it's hatching.", --------------------------
			HOT = "Are eggs supposed to sweat?", --------------------------
			LONG = "I have a feeling this is going to take a while...", --------------------------
			SHORT = "It should hatch any time now.", --------------------------
		},
		TALLBIRDNEST =
		{
			GENERIC = "That's quite an egg!", --------------------------
			PICKED = "The nest is empty.", --------------------------
		},
		TEENBIRD =
		{
			GENERIC = "Not a very tall bird.", --------------------------
			HUNGRY = "I'd better find it some food.", --------------------------
			STARVING = "It has a dangerous look in it's eye.", --------------------------
		},
		TELEBASE =	-- Duplicated
		{
			VALID = "It's ready to go.", --------------------------
			GEMS = "It needs more purple gems.", --------------------------
		},
		GEMSOCKET = -- Duplicated
		{
			VALID = "Looks ready.", --------------------------
			GEMS = "It needs a gem.", --------------------------
		},
		TELEPORTATO_BASE =
		{
			ACTIVE = "With this I can surely pass through space and time!", --------------------------
			GENERIC = "This appears to be a nexus to another world!", --------------------------
			LOCKED = "There's still something missing.", --------------------------
			PARTIAL = "Soon, my invention will be complete!", --------------------------
		},
		TELEPORTATO_BOX = "This may control the polarity of the whole universe.", --------------------------
		TELEPORTATO_CRANK = "Tough enough to handle the most intense experiments.", --------------------------
		TELEPORTATO_POTATO = "This metal potato contains great and fearful power...", --------------------------
		TELEPORTATO_RING = "A ring that could focus dimensional energies.", --------------------------
		TELESTAFF = "It can show me the world.", --------------------------
		TENT = 
		{
			GENERIC = "I get crazy when I don't sleep.", --------------------------
			BURNT = "Nothing left to sleep in.", --------------------------
		},
		SIESTAHUT = 
		{
			GENERIC = "A nice place for an afternoon rest out of the heat.", --------------------------
			BURNT = "It won't provide much shade now.", --------------------------
		},
		TENTACLE = "That looks dangerous.", --------------------------
		TENTACLESPIKE = "It's pointy and slimy.", --------------------------
		TENTACLESPOTS = "I think these were its genitalia.", --------------------------
		TENTACLE_PILLAR = "A slimy pole.", --------------------------
        TENTACLE_PILLAR_HOLE = "Seems stinky, but worth exploring.", --------------------------
		TENTACLE_PILLAR_ARM = "Little slippery arms.", --------------------------
		TENTACLE_GARDEN = "Yet another slimy pole.", --------------------------
		TOPHAT = "What a nice hat.", --------------------------
		TORCH = "Something to hold back the night.", --------------------------
		TRANSISTOR = "It's whirring with electricity.", --------------------------
		TRAP = "I wove it real tight.", --------------------------
		TRAP_TEETH = "This is a nasty surprise.", --------------------------
		TRAP_TEETH_MAXWELL = "I'll want to avoid stepping on that!", --------------------------
		TREASURECHEST = 
		{
			GENERIC = "It's my tickle trunk!", --------------------------
			BURNT = "That trunk was truncated.", --------------------------
		},
		TREASURECHEST_TRAP = "How convenient!", --------------------------
		TREECLUMP = "It's almost like someone is trying to prevent me from going somewhere.", --------------------------
		
		TRINKET_1 = "They are all melted together.", -------------------------- --Melty Marbles
		TRINKET_2 = "It's just a cheap replica.", -------------------------- --Fake Kazoo
		TRINKET_3 = "The knot is stuck. Forever.", -------------------------- --Gord's Knot
		TRINKET_4 = "It must be some kind of religious artifact.", -------------------------- --Gnome
		TRINKET_5 = "Sadly, it's too small for me to escape on.", -------------------------- --Tiny Rocketship
		TRINKET_6 = "Hmm... I'm not sure what this these are.", --Frazzled Wires
		TRINKET_7 = "I have no time for fun and games!", -------------------------- --Ball and Cup
		TRINKET_8 = "Great. All of my tub stopping needs are met.", -------------------------- --Hardened Rubber Bung
		TRINKET_9 = "I'm more of a zipper person, myself.", -------------------------- --Mismatched Buttons
		TRINKET_10 = "I hope I get out of here before I need these.", -------------------------- --Second-hand Dentures
		TRINKET_11 = "He whispers beautiful lies to me.", -------------------------- --Lying Robot
		TRINKET_12 = "I'm not sure what I should do with a dessicated tentacle.", -------------------------- --Dessicated Tentacle
		TRINKET_13 = "It must be some kind of religious artifact.", -------------------------- --Gnomette
		TRINKET_14 = "Now if I only had some tea...", -------------------------- -- Leaky Teacup
		TRINKET_15 = "The king's bishop.", -------------------------- -- White Bishop
		TRINKET_16 = "This is the wrong bishop.", -------------------------- -- Black Bishop
		TRINKET_17 = "An ice cream fork!", -------------------------- -- Bent Spork
		TRINKET_18 = "I wonder what it's hiding?", -------------------------- -- Toy Trojan Horse
		TRINKET_19 = "It doesn't spin very well.", -------------------------- -- Unbalanced Top
		TRINKET_20 = "Now I can scratch my back; all my problems are solved!", -------------------------- -- Back Scratcher
		TRINKET_21 = "This egg beater is all bent out of shape.", -------------------------- -- Beaten Beater
		TRINKET_22 = "Sadly, it's not strong enough to be useful for anything.", -------------------------- -- Frayed Yarn
		TRINKET_23 = "I can put my shoes on without help, thanks.", -------------------------- -- Shoe Horn
		TRINKET_24 = "Is it really lucky?", -------------------------- -- Lucky Cat Jar
		TRINKET_25 = "It smells kind of stale.", -------------------------- -- Air Unfreshener
		TRINKET_26 = "Food and a cup! The ultimate survival container.", -------------------------- -- Potato Cup
		TRINKET_27 = "Good, I can hang my clothes up if I ever find a hook.", -------------------------- -- Wire Hanger
		
		TRUNKVEST_SUMMER = "Wilderness casual.", --------------------------
		TRUNKVEST_WINTER = "Winter survival gear.", --------------------------
		TRUNK_COOKED = "Somehow even more nasal than before.", --------------------------
		TRUNK_SUMMER = "A light breezy trunk.", --------------------------
		TRUNK_WINTER = "A thick, hairy trunk.", --------------------------
		TUMBLEWEED = "Who knows what that tumbleweed has picked up.", --------------------------
		TURF_CARPETFLOOR = "It's surprisingly scratchy.", --------------------------	-- Duplicated
		TURF_CHECKERFLOOR = "These are pretty snazzy.", --------------------------	-- Duplicated
		TURF_DIRT = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_FOREST = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_GRASS = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_MARSH = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_ROAD = "Hastily cobbled stones.", --------------------------	-- Duplicated
		TURF_ROCKY = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_SAVANNA = "A chunk of ground.", --------------------------	-- Duplicated
		TURF_WOODFLOOR = "These are floorboards.", --------------------------	-- Duplicated
		TURKEYDINNER = "Mmmm.", --------------------------
		TWIGS = "It's a bunch of small twigs.", --------------------------
		UMBRELLA = "This will keep my hair dry, at least.", --------------------------
		GRASS_UMBRELLA = "This will keep my hair moderately dry, at least.", --------------------------
		UNIMPLEMENTED = "It doesn't look finished! It could be dangerous.", --------------------------
		WAFFLES = "I cooked it myself!", --------------------------
		WALL_HAY = 
		{	
			GENERIC = "Hmmmm. I guess that'll have to do.", --------------------------
			BURNT = "That won't do at all.", --------------------------
		},
		WALL_HAY_ITEM = "This seems like a bad idea.", --------------------------
		WALL_STONE = "That's a nice wall.", --------------------------
		WALL_STONE_ITEM = "They make me feel so safe.", --------------------------
		WALL_RUINS = "An ancient piece of wall.", --------------------------
		WALL_RUINS_ITEM = "A solid piece of history.", --------------------------
		WALL_WOOD = 
		{
			GENERIC = "Pointy!", --------------------------
			BURNT = "Burnt!", --------------------------
		},
		WALL_WOOD_ITEM = "Pickets!", --------------------------
		WALL_MOONROCK = "Spacey and smooth!", --------------------------
		WALL_MOONROCK_ITEM = "Very light but surprisingly tough.", --------------------------
		WALRUS = "Walruses are natural predators.", --------------------------
		WALRUSHAT = "It's covered with walrus hairs.", --------------------------
		WALRUS_CAMP =
		{
			EMPTY = "Looks like somebody was camping here.", --------------------------
			GENERIC = "It looks warm and cozy inside.", --------------------------
		},
		WALRUS_TUSK = "I'm sure I'll find a use for it eventually.", --------------------------
		WARDROBE = 
		{
			GENERIC = "I could change into something lighter I guess.", --------------------------
            BURNING = "That's burning fast!", --------------------------
			BURNT = "So long, style.", --------------------------
		},
		WARG = "You might be something to reckon with, big dog.", --------------------------
		WASPHIVE = "I think those bees are mad.", --------------------------
		WATERMELON = "Sticky sweet.", --------------------------
		WATERMELON_COOKED = "Juicy and warm.", --------------------------
		WATERMELONHAT = "Let the juice run down your face.", --------------------------
		WETGOOP = "I cooked it myself!", --------------------------
		WINTERHAT = "It'll be good for when winter comes.", --------------------------
		WINTEROMETER = 
		{
			GENERIC = "I am one heck of a scientist.", --------------------------
			BURNT = "Its measuring days are over.", --------------------------
		},
		WORMHOLE =
		{
			GENERIC = "Soft and undulating.", --------------------------
			OPEN = "I wonder what it's like to be food?",
		},
		WORMHOLE_LIMITED = "Guh, that thing looks worse off than usual.", --------------------------
		ACCOMPLISHMENT_SHRINE = "I want to use it, and I want the world to know what I did.", --------------------------        
		LIVINGTREE = "Is it watching me?", --------------------------
		ICESTAFF = "Pssh, I don't need this!",
		REVIVER = "I happen to be an expert at bio-engineering!",
		LIFEINJECTOR = "I hate these.",
		SKELETON_PLAYER =
		{
			MALE = "%s got rekt by %s.",
			FEMALE = "%s got rekt by %s.",
			ROBOT = "%s got rekt by %s.",
			DEFAULT = "%s got rekt by %s.",
		},
		HUMANMEAT = "I'm not a youkai, I'm a fairy!",
		HUMANMEAT_COOKED = "I'm still not a youkai.",
		HUMANMEAT_DRIED = "Rumia would like this.",
		MOONROCKNUGGET = "That rock came from the moon.", --------------------------
	},
	DESCRIBE_GENERIC = "It's a... thing.", --------------------------
	DESCRIBE_TOODARK = "It's too dark to see!", --------------------------
	DESCRIBE_SMOLDERING = "That thing is about to catch fire.", --------------------------
	EAT_FOOD =
	{
		TALLBIRDEGG_CRACKED = "Mmm. Beaky.", --------------------------
	},
}
