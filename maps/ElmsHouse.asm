	object_const_def ; object_event constants
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_PAPER

ElmsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Fennel:
	jumptextfaceplayer FennelText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd difficultbookshelf

FennelText:
	text "Fennel: I've been"
	line "helping Aurea with"
	cont "her research and"

	para "my sister Amanita"
	line "with establishing"
	cont "the PC system here"
	cont "in Onaga."

	para "It's a busy life!"
	done

ElmsHouseLabFoodText:
; unused
	text "There's some food"
	line "here. It must be"
	cont "for the LAB."
	done

ElmsHousePokemonFoodText:
; unused
	text "There's some food"
	line "here. This must be"
	cont "for #MON."
	done

ElmsHousePCText:
	text "It's Professor"
	line "Juniper's thesis"
	cont "on the origin of"
	cont "#mon."

	para "It's way too"
	line "complicated to"
	cont "read."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MURKROW_VALLEY, 3
	warp_event  3,  7, MURKROW_VALLEY, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, NewBarkTVScript

	db 2 ; object events
	object_event  1,  5, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Fennel, -1
	object_event  0,  1, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsHousePC, -1
