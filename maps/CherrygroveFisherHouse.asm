	object_const_def ; object_event constants
	const CHERRYGROVEFISHERHOUSE_POKEFAN_M

CherrygroveFisherHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygroveFisherPokefanMScript:
	jumptextfaceplayer CherrygroveFisherPokefanMText

CherrygroveFisherHouseBookshelf:
	jumpstd magazinebookshelf

CherrygroveFisherTelevision:
	jumpstd televisionscript

CherrygroveFisherPokefanMText:
	text "We used to have a"
	line "big antique show"
	cont "every year, but I"
	cont "know if it will"
	cont "happen this year."
	done

CherrygroveFisherHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, CHERRYGROVE_CITY, 4
	warp_event  3,  7, CHERRYGROVE_CITY, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, CherrygroveFisherHouseBookshelf
	bg_event  2,  1, BGEVENT_READ, CherrygroveFisherTelevision

	db 1 ; object events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveFisherPokefanMScript, -1
