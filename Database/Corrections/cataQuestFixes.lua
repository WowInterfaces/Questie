---@class CataQuestFixes
local CataQuestFixes = QuestieLoader:CreateModule("CataQuestFixes")

---@type QuestieDB
local QuestieDB = QuestieLoader:ImportModule("QuestieDB")
---@type ZoneDB
local ZoneDB = QuestieLoader:ImportModule("ZoneDB")
---@type QuestieProfessions
local QuestieProfessions = QuestieLoader:ImportModule("QuestieProfessions")
---@type QuestieCorrections
local QuestieCorrections = QuestieLoader:ImportModule("QuestieCorrections")
---@type l10n
local l10n = QuestieLoader:ImportModule("l10n")

QuestieCorrections.objectObjectiveFirst[24817] = true

function CataQuestFixes.Load()
    local questKeys = QuestieDB.questKeys
    local raceKeys = QuestieDB.raceKeys
    local profKeys = QuestieProfessions.professionKeys
    local zoneIDs = ZoneDB.zoneIDs
    local specialFlags = QuestieDB.specialFlags

    return {
        [578] = { -- The Stone of the Tides
            [questKeys.childQuests] = {579},
        },
        [579] = { -- Stormwind Library
            [questKeys.parentQuest] = 578,
        },
        [869] = { -- To Track a Thief
            [questKeys.triggerEnd] = {"Source of Tracks Discovered", {[zoneIDs.THE_BARRENS]={{63.5,61.5}}}},
        },
        [2438] = { -- The Emerald Dreamcatcher
            [questKeys.specialFlags] = 0,
        },
        [13564] = { -- A Lost Companion
            [questKeys.triggerEnd] = {"Locate Grimclaw", {[zoneIDs.DARKSHORE]={{43,39}}}},
        },
        [13639] = { -- Resupplying the Excavation
            [questKeys.triggerEnd] = {"Find Huldar, Miran, and Saean", {[zoneIDs.LOCH_MODAN]={{55.6,68.5}}}},
        },
        [13881] = { -- Consumed
            [questKeys.triggerEnd] = {"Watering Hole Investigated", {[zoneIDs.DARKSHORE]={{45,79.1}}}},
        },
        [13961] = { -- Drag it Out of Them
            [questKeys.triggerEnd] = {"Razormane Prisoner Delivered", {[zoneIDs.THE_BARRENS]={{56.4,40.3}}}},
        },
        [14011] = { -- Primal Strike
            [questKeys.objectives] = {{{48304}},nil,nil,nil,nil,{{73899}}},
        },
        [14019] = { -- Monkey Business
            [questKeys.objectives] = {{{34699}}},
            [questKeys.preQuestSingle] = {14001},
        },
        [14021] = { -- Miner Troubles
            [questKeys.triggerEnd] = {"Kaja'mite Ore mining a success!", {[zoneIDs.THE_LOST_ISLES]={{31.9,73.6}}}},
        },
        [14066] = { -- Investigate the Wreckage
            [questKeys.triggerEnd] = {"Caravan Scene Searched", {[zoneIDs.THE_BARRENS]={{59.2,67.5}}}},
        },
        [14071] = { -- Rolling with my Homies
            [questKeys.objectives] = {{{48323},{34890},{34892},{34954}}},
            [questKeys.childQuests] = {28606},
        },
        [14109] = { -- The New You
            [questKeys.requiredSourceItems] = {47044},
            [questKeys.exclusiveTo] = {14110},
        },
        [14110] = { -- The New You
            [questKeys.requiredSourceItems] = {47044},
            [questKeys.exclusiveTo] = {14109},
        },
        [14113] = { -- Life of the Party
            [questKeys.preQuestSingle] = {14109},
        },
        [14121] = { -- Robbing Hoods
            [questKeys.childQuests] = {28607},
        },
        [14122] = { -- The Great Bank Heist
            [questKeys.startedBy] = {{34668}},
        },
        [14125] = { -- 447
            [questKeys.startedBy] = {{34668}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14121,14122,14123,14124},
        },
        [14153] = { -- Life of the Party
            [questKeys.preQuestSingle] = {14110},
        },
        [14165] = { -- Stone Cold
            [questKeys.triggerEnd] = {"Stonified Miner Delivered", {[zoneIDs.AZSHARA]={{59.9,40.2}}}},
        },
        [14233] = { -- Orcs Can Write?
            [questKeys.exclusiveTo] = {},
        },
        [14234] = { -- The Enemy of My Enemy
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14031,14233},
        },
        [14244] = { -- Up, Up & Away!
            [questKeys.objectives] = {nil,{{196439}}},
        },
        [14245] = { -- It's a Town-In-A-Box
            [questKeys.objectives] = {nil,{{201938}}},
        },
        [14248] = { -- Help Wanted
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14014,14019,14473}
        },
        [14389] = { -- Wasn't It Obvious?
            [questKeys.triggerEnd] = {"Find Anara, and hopefully, Azuregos", {[zoneIDs.AZSHARA]={{27.7,40.4}}}},
        },
        [14473] = { -- It's Our Problem Now
            [questKeys.preQuestSingle] = {14001},
        },
        [24452] = { -- Profitability Scouting
            [questKeys.triggerEnd] = {"Heart of Arkkoroc identified", {[zoneIDs.AZSHARA]={{32.4,50.4}}}},
        },
        [24502] = { -- Necessary Roughness
            [questKeys.objectives] = {{{48526},{37114}}},
        },
        [24618] = { -- Claim the Battle Scar
            [questKeys.triggerEnd] = {"Battlescar Flag Scouted", {[zoneIDs.THE_BARRENS]={{45.2,69.4}}}},
        },
        [24671] = { -- Cluster Cluck
            [questKeys.objectives] = {{{38111}}},
            [questKeys.preQuestSingle] = {},
        },
        [24817] = { -- A Goblin in Shark's Clothing
            [questKeys.objectives] = {{{36682}},{{202108}}},
        },
        [24864] = { -- Irresistible Pool Pony
            [questKeys.objectives] = {nil,nil,nil,nil,{{{38412,44578,44579,44580},38412,"Naga Hatchling lured"}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24858,24859},
        },
        [24901] = { -- Town-In-A-Box: Under Attack
            [questKeys.objectives] = {{{38526}}},
        },
        [24937] = { -- Oomlot Dealt With
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24925,24929},
        },
        [24942] = { -- Zombies vs. Super Booster Rocket Boots
            [questKeys.objectives] = {nil,nil,nil,nil,{{{38753,38813,38815,38816},38813,"Goblin Zombies slain"}}},
        },
        [24945] = { -- Three Little Pygmies
            [questKeys.preQuestSingle] = {24940},
        },
        [24952] = { -- Rocket Boot Boost
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {24942,24945,24946},
        },
        [24958] = { -- Volcanoth!
            [questKeys.objectives] = {{{38855}}},
        },
        [24960] = { -- The Wakening
            [questKeys.preQuestSingle] = {28608},
        },
        [25081] = { -- Claim the Battlescar
            [questKeys.triggerEnd] = {"Battlescar Flag Scouted", {[zoneIDs.THE_BARRENS]={{45.2,69.4}}}},
        },
        [25105] = { -- Nibbler!  No!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25143] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
        },
        [25154] = { -- A Present for Lila
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25155] = { -- Ogrezonians in the Mood
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25156] = { -- Elemental Goo
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25157] = { -- The Latest Fashion!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25158] = { -- Nibbler!  No!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25159] = { -- The Latest Fashion!
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25160] = { -- A Present for Lila
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25161] = { -- Ogrezonians in the Mood
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25162] = { -- Elemental Goo
            [questKeys.requiredSkill] = {profKeys.JEWELCRAFTING, 475}
        },
        [25202] = { -- The Fastest Way to His Heart
            [questKeys.exclusiveTo] = {25243},
        },
        [25203] = { -- What Kind of Name is Chip, Anyway?
            [questKeys.exclusiveTo] = {25244},
        },
        [25217] = { -- Totem Modification
            [questKeys.requiredSourceItems] = {53052,54214,54216,54217},
            [questKeys.extraObjectives] = {{{[zoneIDs.SHIMMERING_EXPANSE]={{40.4,34.2}}}, Questie.ICON_TYPE_EVENT, l10n("Place a totem on the ground and defend it")}},
        },
        [25243] = { -- She Loves Me, She Loves Me NOT!
            [questKeys.exclusiveTo] = {25202},
        },
        [25244] = { -- What Kind of Name is Candy, Anyway?
            [questKeys.preQuestSingle] = {25243},
            [questKeys.exclusiveTo] = {25203},
        },
        [25316] = { -- As Hyjal Burns
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Hop on Aronus"), 0, {{"monster", 39140}}}},
        },
        [25325] = { -- Through the Dream
            [questKeys.triggerEnd] = {"Arch Druid Fandral Staghelm delivered", {[zoneIDs.MOUNT_HYJAL]={{55,28.9}}}},
        },
        [25354] = { -- Sweeping the Shelf
            [questKeys.requiredRaces] = raceKeys.ALL_HORDE,
        },
        [25419] = { -- Lady La-La's Medallion
            [questKeys.requiredSourceItems] = {55188},
        },
        [25442] = { -- A Pearl of Wisdom
            [questKeys.startedBy] = {{40510},nil,{54614}},
            [questKeys.exclusiveTo] = {25890},
        },
        [25464] = { -- The Return of Baron Geddon
            [questKeys.objectives] = {{{40147}}},
        },
        [25473] = { -- Kaja'Cola
            [questKeys.startedBy] = {{34872}},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {14075,14069},
        },
        [25577] = { -- Crushing the Cores
            [questKeys.requiredSourceItems] = {55123},
        },
        [25593] = { -- Shelled Salvation
            [questKeys.objectives] = {nil,nil,nil,nil,{{{39729,41203,41219,42404},39729,"Shell Survivors rescued"}}},
            [questKeys.requiredSourceItems] = {55141},
        },
        [25617] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25624},
        },
        [25618] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25623},
        },
        [25621] = { -- Field Test: Gnomecorder
            [questKeys.triggerEnd] = {"Gnomecorder Tested", {[zoneIDs.STONETALON_MOUNTAINS]={{73.2,46.6}}}},
        },
        [25623] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25618},
        },
        [25624] = { -- Into the Maw!
            [questKeys.exclusiveTo] = {25617},
        },
        [25715] = { -- A Closer Look
            [questKeys.triggerEnd] = {"Scout the ships on the Shattershore", {[zoneIDs.BLASTED_LANDS]={{69,32.7}}}},
        },
        [27517] = { -- Be Prepared
            [questKeys.objectives] = {nil,nil,{{61321}}},
        },
        [25830] = { -- The Last Living Lorekeeper
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25520,25611,25807},
        },
        [25890] = { -- Nespirah
            [questKeys.triggerEnd] = {"Find a way to communicate with Nespirah", {[zoneIDs.SHIMMERING_EXPANSE]={{52.5,54.1}}}},
            [questKeys.preQuestSingle] = {},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Take the Swift Seahorse to Nespirah."), 0, {{"monster", 40851}}}},
        },
        [25900] = { -- Making Contact
            [questKeys.objectives] = {{{41531}}},
        },
        [25909] = { -- Capture the Crab
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {25907,25908},
        },
        [25930] = { -- Ascending the Vale
            [questKeys.triggerEnd] = {"Ascend the Charred Vale", {[zoneIDs.STONETALON_MOUNTAINS]={{31.3,73.2}}}},
        },
        [26105] = { -- Claim Korthun's End
            [questKeys.startedBy] = {{42115}},
        },
        [26106] = { -- Fuel-ology 101
            [questKeys.requiredSourceItems] = {56819,56820},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_EVENT, l10n("Bring three Hammerhead Oil and two Remora Oil to Engineer Hexascrub."), 0, {{"monster", 41666}}}},
        },
        [26258] = { -- Deathwing's Fall
            [questKeys.triggerEnd] = {"Deathwing's Fall reached", {[zoneIDs.DEEPHOLM]={{61.3,57.5}}}},
        },
        [26440] = { -- Clingy
            [questKeys.triggerEnd] = {"Pebble brought to crystal formation",{[zoneIDs.DEEPHOLM]={{29,45}}}},
            [questKeys.objectives] = {},
        },
        [26512] = { -- Tuning the Gnomecorder
            [questKeys.triggerEnd] = {"Test the Gnomecorder at the Lakeshire Graveyard", {[zoneIDs.REDRIDGE_MOUNTAINS]={{32.3,39.5}}}},
        },
        [26642] = { -- Preserving the Barrens
            [questKeys.exclusiveTo] = {28494},
        },
        [26656] = { -- Don't. Stop. Moving.
            [questKeys.triggerEnd] = {"Opalescent Guardians Escorted to safety", {[zoneIDs.DEEPHOLM]={{51,14.8}}}},
            [questKeys.objectives] = {{{42466},{43597}},nil,nil,nil,},
        },
        [26711] = { -- Off to the Bank (female)
            [questKeys.exclusiveTo] = {26712},
        },
        [26712] = { -- Off to the Bank (male)
            [questKeys.exclusiveTo] = {26711},
        },
        [26930] = { -- After the Crusade
            [questKeys.triggerEnd] = {"Scarlet Crusade camp scouted", {[zoneIDs.WESTERN_PLAGUELANDS]={{40.6,52.6}}}},
        },
        [26969] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
        },
        [26975] = { -- Rallying the Fleet
            [questKeys.triggerEnd] = {"Prince Anduin Escorted to Graves", {[zoneIDs.STORMWIND_CITY]={{33.5,40.9}}}},
        },
        [27007] = { -- Silvermarsh Rendezvous
            [questKeys.triggerEnd] = {"Upper Silvermarsh reached", {[zoneIDs.DEEPHOLM]={{72.3,62.3}}}},
        },
        [27027] = { -- Primal Strike
            [questKeys.objectives] = {{{44175}},nil,nil,nil,nil,{{73899}}},
        },
        [27044] = { -- Peasant Problems
            [questKeys.triggerEnd] = {"Anduin Escorted to Farmer Wollerton", {[zoneIDs.STORMWIND_CITY]={{52.1,6.5}}}},
        },
        [27509] = { -- Breach in the Defenses
            [questKeys.objectives] = {nil,{{205486,"Twilight Portal destroyed"}}},
        },
        [27123] = { -- Deepholm, Realm of Earth
            [questKeys.exclusiveTo] = {26244,26245,26246},
        },
        [27139] = { -- Hobart Needs You
            [questKeys.exclusiveTo] = {24671},
        },
        [27141] = { -- Exploding Through
            [questKeys.preQuestSingle] = {},
        },
        [27152] = { -- Unusual Behavior... Even For Gnolls
            [questKeys.triggerEnd] = {"Gnoll camp investigated", {[zoneIDs.WESTERN_PLAGUELANDS]={{57.5,35.6}}}},
        },
        [27176] = { -- A Strange Disc
            [questKeys.requiredSourceItems] = {60865},
        },
        [27203] = { -- The Maelstrom
            [questKeys.preQuestSingle] = {27399,27442,27722,27398,27443,27727},
        },
        [27341] = { -- Scouting the Shore
            [questKeys.triggerEnd] = {"Beach Head Control Point Scouted", {[zoneIDs.TWILIGHT_HIGHLANDS]={{77.5,65.2}}}},
        },
        [27349] = { -- Break in Communications: Dreadwatch Outpost
            [questKeys.triggerEnd] = {"Investigate Dreadwatch Outpost", {[zoneIDs.RUINS_OF_GILNEAS]={{53,32.6}}}},
        },
        [27398] = { -- The Battle Is Won, The War Goes On
            [questKeys.exclusiveTo] = {27443,27727},
        },
        [27399] = { -- The Battle Is Won, The War Goes On
            [questKeys.exclusiveTo] = {27442,27722},
        },
        [27442] = { -- The War Has Many Fronts
            [questKeys.exclusiveTo] = {27399,27722},
        },
        [27443] = { -- The War Has Many Fronts
            [questKeys.exclusiveTo] = {27398,27727},
        },
        [27610] = { -- Scouting the Shore
            [questKeys.triggerEnd] = {"Beach Head Control Point Scouted", {[zoneIDs.TWILIGHT_HIGHLANDS]={{77.5,65.2}}}},
        },
        [27674] = { -- To the Surface
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Torben Zapblast."), 0, {{"monster", 46293}}}},
        },
        [27689] = { -- Distract Them for Me
            [questKeys.preQuestSingle] = {27655},
            [questKeys.exclusiveTo] = {},
        },
        [27696] = { -- The Elementium Axe
            [questKeys.preQuestSingle] = {27689},
            [questKeys.exclusiveTo] = {},
        },
        [27704] = { -- Legends of the Sunken Temple
            [questKeys.triggerEnd] = {"Hall of Masks found", {[zoneIDs.THE_TEMPLE_OF_ATAL_HAKKAR]={{74,44.4}}}},
        },
        [27721] = { -- Warchief's Command: Mount Hyjal! TODO: Add TALK_ICON
            [questKeys.objectives] = {{{15188}}},
        },
        [27722] = { -- Warchief's Command: Deepholm!
            [questKeys.exclusiveTo] = {27399,27442},
        },
        [27727] = { -- Hero's Call: Deepholm!
            [questKeys.exclusiveTo] = {27398,27443},
        },
        [27742] = { -- A Little on the Side
            [questKeys.preQuestSingle] = {28885},
        },
        [27743] = { -- While We're Here
            [questKeys.preQuestSingle] = {28885},
        },
        [27755] = { -- The Curse of the Tombs
            [questKeys.preQuestSingle] = {28501},
        },
        [27778] = { -- Hacking the Wibson
            [questKeys.objectives] = {{{46715}}},
            [questKeys.requiredSourceItems] = {62621},
            [questKeys.preQuestSingle] = {},
            [questKeys.preQuestGroup] = {27761,27777},
        },
        [27779] = { -- Gnomebliteration
            [questKeys.objectives] = {{{46384}}},
        },
        [27783] = { -- Garona Needs You
            [questKeys.preQuestSingle] = {27745},
            [questKeys.exclusiveTo] = {27786},
        },
        [27922] = { -- Traitors!
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_OBJECT, l10n("Hide behind Neferset Frond"), 0, {{"object", 206579}}}},
        },
        [27993] = { -- Take it to 'Em!
            [questKeys.triggerEnd] = {"Khartut's Tomb Investigated",{[zoneIDs.ULDUM]={{64.6,28.6}}}},
            [questKeys.exclusiveTo] = {27141},
        },
        [28038] = { -- Blood in the Highlands
            [questKeys.exclusiveTo] = {27863},
        },
        [28134] = { -- Impending Retribution
            [questKeys.objectives] = {{{46603},{47715},{47930}}}
        },
        [28145] = { -- Venomblood Antidote
            [questKeys.objectives] = {{{45859}}},
        },
        [28170] = { -- Night Terrors
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Uchek"), 0, {{"monster", 47826}}}},
        },
        [28247] = { -- Last of Her Kind
            [questKeys.objectives] = {{{47929,"Obsidia defeated"}}},
        },
        [28250] = { -- Thieving Little Pluckers
            [questKeys.objectives] = {nil,nil,nil,nil,{{{48040,48041,48043},48040,"Thieving plucker smashed"}}},
        },
        [28486] = { -- Salhet's Gambit
            [questKeys.triggerEnd] = {"Higher ground secured", {[zoneIDs.ULDUM]={{54.,71.1}}}},
            [questKeys.extraObjectives] = {{nil, Questie.ICON_TYPE_TALK, l10n("Talk to Ranmkahen Ranger Captain"), 0, {{"monster", 49244}}}},
        },
        [28501] = { -- The Defense of Nahom
            [questKeys.objectives] = {{{49228}}},
        },
        [28606] = { -- The Keys to the Hot Rod
            [questKeys.startedBy] = {{34874}},
            [questKeys.parentQuest] = 14071,
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [28607] = { -- The Keys to the Hot Rod
            [questKeys.parentQuest] = 14121,
            [questKeys.specialFlags] = specialFlags.REPEATABLE,
        },
        [28635] = { -- A Haunting in Hillsbrad
            [questKeys.triggerEnd] = {"Search Dun Garok for Evidence of a Haunting", {[zoneIDs.HILLSBRAD_FOOTHILLS]={{61.9,84.5}}}},
        },
        [28732] = { --This Can Only Mean One Thing...
            [questKeys.triggerEnd] = {"Arrive at Blackrock Caverns", {[zoneIDs.BLACKROCK_CAVERNS]={{33,66.4}}}},
            [questKeys.objectives] = {{{49456}},nil,nil,nil,},
        },
        [28805] = { -- The Eye of the Storm
            [questKeys.objectives] = {nil,{{197196}}},
        },
        [28228] = { -- Rejoining the Forest
            [questKeys.triggerEnd] = {"Protector brought to hill", {[zoneIDs.FELWOOD]={{48.7,25.2}}}},
        },
        [28870] = { -- Return to the Lost City
            [questKeys.preQuestSingle] = {28520},
        },
        [28872] = { -- Total War
            [questKeys.objectives] = {nil,{{206195}}},
        },
        [28909] = { -- Sauranok Will Point the Way
            [questKeys.startedBy] = {{39605}},
            [questKeys.preQuestSingle] = {26294},
            [questKeys.exclusiveTo] = {26311},
        },
        [29102] = { -- To Fort Livingston
            [questKeys.triggerEnd] = {"Head to Fort Livingston in Northern Stranglethorn Vale.", {[zoneIDs.STRANGLETHORN_VALE]={{52.8,67.2}}}},
        },
        [29392] = { -- Missing Heirlooms
            [questKeys.triggerEnd] = {"Search the courier's cabin", {[zoneIDs.STORMWIND_CITY]={{41.4,72.5}}}},
        },
        [29415] = { -- Missing Heirlooms
            [questKeys.triggerEnd] = {"Search the courier's cabin", {[zoneIDs.DUROTAR]={{60,46.1}}}},
        },
        [29475] = { -- Goblin Engineering
            [questKeys.startedBy] = {{5174,5518,8126,8738,11017,11031,16667,16726,29513,52636,52651}},
            [questKeys.finishedBy] = {{5174,5518,11017,11031,16667,16726,29513,52636,52651}},
            [questKeys.exclusiveTo] = {3639,3641,3643,29477},
        },
        [29477] = { -- Gnomish Engineering
            [questKeys.startedBy] = {{5174,5518,7406,7944,11017,11031,16667,16726,29514,52636,52651}},
            [questKeys.finishedBy] = {{5174,5518,7944,11017,11031,16667,16726,29514,52636,52651}},
            [questKeys.exclusiveTo] = {3639,3641,3643,29475},
        },
        [29481] = { -- Elixir Master
            [questKeys.requiredSkill] = {profKeys.ALCHEMY,475},
        },
        [29482] = { -- Transmutation Master
            [questKeys.requiredSkill] = {profKeys.ALCHEMY,475},
        },
        [29536] = { -- Heart of Rage
            [questKeys.triggerEnd] = {"Fully Investigate The Blood Furnace", {[zoneIDs.THE_BLOOD_FURNACE]={{64.9,41.5}}}},
        },
        [29539] = { -- Heart of Rage
            [questKeys.triggerEnd] = {"Fully Investigate The Blood Furnace", {[zoneIDs.THE_BLOOD_FURNACE]={{64.9,41.5}}}},
        },
    }
end

function CataQuestFixes:LoadFactionFixes()
    local questKeys = QuestieDB.questKeys

    local questFixesHorde = {
        [29481] = { -- Elixir Master
            [questKeys.startedBy] = {{3347}}
        },
        [29482] = { -- Transmutation Master
            [questKeys.startedBy] = {{3347}}
        },
    }

    local questFixesAlliance = {
        [29481] = { -- Elixir Master
            [questKeys.startedBy] = {{5499}}
        },
        [29482] = { -- Transmutation Master
            [questKeys.startedBy] = {{5499}}
        },
    }

    if UnitFactionGroup("Player") == "Horde" then
        return questFixesHorde
    else
        return questFixesAlliance
    end
end