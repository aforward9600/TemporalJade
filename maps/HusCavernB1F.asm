	object_const_def ; object_event constants

HusCavernB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

HusCavernB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 35, 35, HUS_CAVERN, 3
	warp_event 33,  5, HUS_CAVERN, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events
