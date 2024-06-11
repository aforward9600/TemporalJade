; See data/maps/scenes.asm for which maps have scene variables.
; Each scene_script and coord_event is associated with a current scene ID.

; Scene variables default to 0.
SCENE_DEFAULT  EQU 0
; Often a map will have a one-time default event for scene 0, and switch to a
; do-nothing scene 1 when the event finishes.
SCENE_FINISHED EQU 1

; wPokecenter2FSceneID
	const_def 1
	const SCENE_POKECENTER2F_LEAVE_TRADE_CENTER       ; 1
	const SCENE_POKECENTER2F_LEAVE_COLOSSEUM          ; 2
	const SCENE_POKECENTER2F_LEAVE_TIME_CAPSULE       ; 3
	const SCENE_POKECENTER2F_LEAVE_MOBILE_TRADE_ROOM  ; 4
	const SCENE_POKECENTER2F_LEAVE_MOBILE_BATTLE_ROOM ; 5

; wPowerPlantSceneID
	const_def
	const SCENE_POWERPLANT_NOTHING               ; 0
	const SCENE_POWERPLANT_GUARD_GETS_PHONE_CALL ; 1

; wCeruleanGymSceneID
	const_def
	const SCENE_CERULEANGYM_NOTHING        ; 0
	const SCENE_CERULEANGYM_GRUNT_RUNS_OUT ; 1

; wRoute25SceneID
	const_def
	const SCENE_ROUTE25_NOTHING     ; 0
	const SCENE_ROUTE25_MISTYS_DATE ; 1

; wLancesRoomSceneID
	const_def 1
	const SCENE_LANCESROOM_APPROACH_LANCE ; 1

; wElmsLabSceneID
	const_def 1
	const SCENE_JUNIPERSLAB_CANT_LEAVE            ; 1
	const SCENE_JUNIPERSLAB_NOTHING               ; 2
	const SCENE_JUNIPERSLAB_MEET_OFFICER          ; 3
	const SCENE_JUNIPERSLAB_UNUSED                ; 4
	const SCENE_JUNIPERSLAB_AIDE_GIVES_POTION     ; 5
	const SCENE_JUNIPERSLAB_AIDE_GIVES_POKE_BALLS ; 6

; wRoute29SceneID
	const_def
	const SCENE_ROUTE29_NOTHING        ; 0
	const SCENE_ROUTE29_CATCH_TUTORIAL ; 1

; wCherrygroveCitySceneID
	const_def
	const SCENE_CHERRYGROVECITYHOUSE_MEET_CYNTHIA      ; 0
	const SCENE_CHERRYGROVECITYHOUSE_NOTHING   ; 1

; wRoute32SceneID
	const_def 1
	const SCENE_ROUTE32_OFFER_SLOWPOKETAIL ; 1
	const SCENE_ROUTE32_NOTHING            ; 2

; wRoute35NationalParkGateSceneID
	const_def
	const SCENE_ROUTE35NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE35NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE35NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wRoute36SceneID
	const_def
	const SCENE_ROUTE36_NOTHING ; 0
	const SCENE_ROUTE36_SUICUNE ; 1

; wRoute36NationalParkGateSceneID
	const_def
	const SCENE_ROUTE36NATIONALPARKGATE_NOTHING             ; 0
	const SCENE_ROUTE36NATIONALPARKGATE_UNUSED              ; 1
	const SCENE_ROUTE36NATIONALPARKGATE_LEAVE_CONTEST_EARLY ; 2

; wAzaleaTownSceneID
	const_def
	const SCENE_AZALEATOWN_NOTHING              ; 0
	const SCENE_AZALEATOWN_RIVAL_BATTLE         ; 1
	const SCENE_AZALEATOWN_KURT_RETURNS_GS_BALL ; 2

; wGoldenrodGymSceneID
	const_def
	const SCENE_GOLDENRODGYM_NOTHING              ; 0
	const SCENE_GOLDENRODGYM_WHITNEY_STOPS_CRYING ; 1

; wEcruteakTinTowerEntranceSceneID
	const_def
	const SCENE_ECRUTEAKTINTOWERENTRANCE_NORMAL
	const SCENE_ECRUTEAKTINTOWERENTRANCE_NOTHING
	const SCENE_ECRUTEAKTINTOWERENTRANCE_SHERLES

; wRoute42SceneID
	const_def
	const SCENE_ROUTE42_NOTHING ; 0
	const SCENE_ROUTE42_SUICUNE ; 1

; wCianwoodCitySceneID
	const_def
	const SCENE_CIANWOODCITY_NOTHING            ; 0
	const SCENE_CIANWOODCITY_SUICUNE_AND_EUSINE ; 1

; wBurnedTower1FSceneID
	const_def 1
	const SCENE_BURNEDTOWER1F_RIVAL_BATTLE ; 1
	const SCENE_BURNEDTOWER1F_NOTHING      ; 2

; wRadioTower5FSceneID
	const_def 1
	const SCENE_RADIOTOWER5F_ROCKET_BOSS ; 1
	const SCENE_RADIOTOWER5F_NOTHING     ; 2

; wRuinsOfAlphOutsideSceneID
	const_def
	const SCENE_RUINSOFALPHOUTSIDE_NOTHING       ; 0
	const SCENE_RUINSOFALPHOUTSIDE_GET_UNOWN_DEX ; 1

; wRuinsOfAlphResearchCenterSceneID
	const_def
	const SCENE_RUINSOFALPHRESEARCHCENTER_NOTHING       ; 0
	const SCENE_RUINSOFALPHRESEARCHCENTER_GET_UNOWN_DEX ; 1

; wRuinsOfAlphInnerChamberSceneID
	const_def
	const SCENE_RUINSOFALPHINNERCHAMBER_NOTHING          ; 0
	const SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE ; 1

; wMahoganyMart1FSceneID
	const_def
	const SCENE_MAHOGANYMART1F_NOTHING               ; 0
	const SCENE_MAHOGANYMART1F_LANCE_UNCOVERS_STAIRS ; 1

; wTeamRocketBaseB2FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB2F_ROCKET_BOSS ; 1
	const SCENE_TEAMROCKETBASEB2F_ELECTRODES  ; 2
	const SCENE_TEAMROCKETBASEB2F_NOTHING     ; 3

; wTeamRocketBaseB3FSceneID
	const_def 1
	const SCENE_TEAMROCKETBASEB3F_RIVAL_ENCOUNTER ; 1
	const SCENE_TEAMROCKETBASEB3F_ROCKET_BOSS     ; 2
	const SCENE_TEAMROCKETBASEB3F_NOTHING         ; 3

; wDragonsDenB1FSceneID
	const_def
	const SCENE_DRAGONSDENB1F_NOTHING        ; 0
	const SCENE_DRAGONSDENB1F_CLAIR_GIVES_TM ; 1

; wOlivinePortSceneID
	const_def 1
	const SCENE_OLIVINEPORT_LEAVE_SHIP ; 1

; wVermilionPortSceneID
	const_def 1
	const SCENE_VERMILIONPORT_LEAVE_SHIP ; 1

; wFastShip1FSceneID
	const_def 1
	const SCENE_FASTSHIP1F_ENTER_SHIP   ; 1
	const SCENE_FASTSHIP1F_MEET_GRANDPA ; 2

; wMastersHouse1FSceneID
	const_def 1
	const SCENE_CANT_LEAVE_HOUSE ; 1
	const SCENE_MASTERS_HOUSE_1F_NOTHING ; 2
	const SCENE_DONE_WITH_2F

;wMastersHouse2FSceneID
	const_def 1
	const SCENE_MASTERS_HOUSE_2F_NOTHING

;wBlackthornCitySceneID
	const_def 1
	const SCENE_BLACKTHORN_CITY_NOTHING

;wIcePath1FSceneID
	const_def 1
	const SCENE_ICE_PATH_B1F_RIVAL

;wMahoganyGymSceneID
	const_def 1
	const SCENE_GYM_GUIDE_STOPS_YOU

;wLakeOfRageSceneID
	const_def 1
	const SCENE_LAKE_OF_RAGE_RIVAL

;wMountMortar1FInsideSceneID
	const_def 1
	const SCENE_MOUNT_MORTAR_1F_INSIDE_HIKER

;wRoute38EcruteakGateSceneID
	const_def 1
	const SCENE_ECRUTEAK_GATE_RIVAL

;wWildAreaOutsideSceneID
	const_def 1
	const SCENE_WILD_AREA_RIVAL

;wEcruteakCitySceneID
	const_def 1
	const SCENE_ECRUTEAK_MOTHER

;wRadioTower1FSceneID
	const_def 1
	const SCENE_RADIOTOWER1F_DIRECTOR

;wRoute34SceneID
	const_def 1
	const SCENE_ROUTE_34_NINJA

;wPlayersHouse1F
	const_def 1
	const SCENE_GRANDMA_GIVES_YOU_WATCH
	const SCENE_GRANDMA_TELLS_YOU_ABOUT_OAK
	const SCENE_PLAYERS_HOUSE_NOTHING

;wVictoryRoadGate
	const_def 1
	const SCENE_VICTORY_ROAD_GATE_GUARD
	const SCENE_VICTORY_ROAD_GATE_OAK
	const SCENE_VICTORY_ROAD_GATE_DONE
	const SCENE_VICTORY_ROAD_GATE_RIVAL

;wSilverCaveMewRoom
	const_def
	const SCENE_MEW_APPEARS
	const SCENE_MEW_PLAYS
	const SCENE_MEW_GONE
