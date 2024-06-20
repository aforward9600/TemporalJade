	object_const_def ; object_event constants
	const CHERRYGROVEGYMSPEECHHOUSE_CYNTHIA

CherrygroveGymSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveGymSpeechHouseYoungsterScript:
	jumptext CherrygroveGymSpeechHouseYoungsterText

CherrygroveGymSpeechHousePokefanFScript:
	jumptextfaceplayer CherrygroveGymSpeechHousePokefanFText

CherrygroveGymSpeechHouseBookshelf:
	jumpstd picturebookshelf

CherrygroveGymSpeechHouseYoungsterText:
	text "Ugh! Go away!"

	para "I've almost beat my"
	line "high score!"
	done

CherrygroveGymSpeechHousePokefanFText:
	text "I swear, my son"
	line "spends all day on"
	cont "that Game Boy!"

	para "I should have"
	line "never gotten it"
	cont "for him!"

	para "Maybe I should"
	line "send him to work"
	cont "on a farm."
	done

CherrygroveGymSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 3
	warp_event  3,  7, CHERRYGROVE_CITY, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveGymSpeechHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, CherrygroveTelevision

	db 2 ; object events
	object_event  2,  4, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHouseYoungsterScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveGymSpeechHousePokefanFScript, -1
