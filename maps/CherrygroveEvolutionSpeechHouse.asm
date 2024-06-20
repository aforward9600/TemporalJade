	object_const_def ; object_event constants
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_TEACHER
	const CHERRYGROVEEVOLUTIONSPEECHHOUSE_LASS

CherrygroveEvolutionSpeechHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveEvolutionSpeechHouseTeacherScript:
	opentext
	writetext CherrygroveEvolutionSpeechHouseTeacherText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseLassScript:
	opentext
	writetext CherrygroveEvolutionSpeechHouseLassText
	waitbutton
	closetext
	end

CherrygroveEvolutionSpeechHouseBookshelf:
	jumpstd magazinebookshelf

CherrygroveTelevision:
	jumpstd televisionscript

CherrygroveEvolutionSpeechHouseTeacherText:
	text "Perhaps I should"
	line "get rid of the TV"
	cont "for starters."

	para "That might be a"
	line "big help…"
	done

CherrygroveEvolutionSpeechHouseLassText:
	text "I don't wanna give"
	line "up my #gear!"

	para "I'd be so bored!"
	done

CherrygroveEvolutionSpeechHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveEvolutionSpeechHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, CherrygroveTelevision

	db 2 ; object events
	object_event  3,  5, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseTeacherScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygroveEvolutionSpeechHouseLassScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
