spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3
	spawn VIRIDIAN_POKECENTER_1F,      5,  3

	spawn PALLET_TOWN,                 5,  6
	spawn VIRIDIAN_CITY,              23, 26
	spawn PEWTER_CITY,                13, 26
	spawn CERULEAN_CITY,              19, 22
	spawn ROUTE_10_NORTH,             11,  2
	spawn VERMILION_CITY,              9,  6
	spawn LAVENDER_TOWN,               3,  6
	spawn SAFFRON_CITY,                9, 30
	spawn CELADON_CITY,               29, 10
	spawn FUCHSIA_CITY,               19, 28
	spawn CINNABAR_ISLAND,            11, 12
	spawn ROUTE_26,                    7,  6
	spawn ROUTE_23,                    9,  6

	spawn MURKROW_VALLEY,             17,  8
	spawn CHERRYGROVE_CITY,           29, 12
	spawn MORAVIL_SCHOOL_OUTSIDE,     11,  8
	spawn ZACONIA_CITY,               19, 18
	spawn ORRIAN_DESERT,              10, 26
	spawn MAHOGANY_TOWN,              15, 14
	spawn LAKE_OF_RAGE,                5, 20
	spawn ECRUTEAK_CITY,              23, 28
	spawn OLIVINE_CITY,               13, 22
	spawn CIANWOOD_CITY,              23, 44
	spawn WILD_AREA_OUTSIDE,           5, 18
	spawn GOLDENROD_CITY,             15, 28
	spawn ROUTE_32,                   11, 74
	spawn SILVER_CAVE_OUTSIDE,        23, 20
	spawn FAST_SHIP_CABINS_SW_SSW_NW,  6,  2
	spawn TEAM_ROCKET_BASE_JAIL,       5,  6
	spawn N_A,                        -1, -1
