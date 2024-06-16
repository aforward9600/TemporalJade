	object_const_def ; object_event constants
	const PLAYERSNEIGHBORSHOUSE_COOLTRAINER_F
	const PLAYERSNEIGHBORSHOUSE_POKEFAN_F

PlayersNeighborsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

FarmerScript_SellMilk:
	faceplayer
	opentext
	checkevent EVENT_ANTIQUO_TOWN_TEMPORAS
	iffalse .NoMilkYet
	pokemart MARTTYPE_MOOMOO_MILK, MART_MOOMOO_MILK
	closetext
	end

.NoMilkYet:
	writetext NoMilkYetText
	waitbutton
	closetext
	end

PlayersNeighborScript:
	jumptextfaceplayer PlayersNeighborText

PlayersNeighborsHouseBookshelfScript:
	jumpstd magazinebookshelf

NewBarkTVScript:
	jumpstd televisionscript

NoMilkYetText:
	text "We're milkin' right"
	line "now, so come back"
	cont "later and I'll sell"
	cont "ya some milk."
	done

PlayersNeighborText:
	text "The price of milk"
	line "is staying the"
	cont "same while every-"

	para "thing else keeps"
	line "going up. Life's"
	cont "not fair, is it?"
	done

PlayersNeighborsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MURKROW_VALLEY, 2
	warp_event  3,  7, MURKROW_VALLEY, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  1,  1, BGEVENT_READ, PlayersNeighborsHouseBookshelfScript
	bg_event  2,  1, BGEVENT_READ, NewBarkTVScript

	db 2 ; object events
	object_event  2,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PlayersNeighborScript, -1
	object_event  5,  3, SPRITE_MILTON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, FarmerScript_SellMilk, -1
