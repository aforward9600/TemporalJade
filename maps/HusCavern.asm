	object_const_def ; object_event constants
	const HUSCAVERN_OFFICER
	const HUSCAVERN_COOLTRAINER_F

HusCavern_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

HusCavernOfficerScript:
	jumptextfaceplayer HusCavernOfficerText

HusCavernCooltrainerFScript:
	jumptextfaceplayer HusCavernCooltrainerFText

HusCavernOfficerText:
	text "Hi there!"
	line "Did you visit"
	cont "Sprout Tower?"
	done

HusCavernCooltrainerFText:
	text "I came too far"
	line "out. I'd better"
	cont "phone home from"
	cont "the Center!"
	done

HusCavern_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 17, 35, ROUTE_31, 4
	warp_event 29,  3, ZACONIA_CITY, 4
	warp_event 37, 23, HUS_CAVERN_B1F, 1
	warp_event 35, 11, HUS_CAVERN_B1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, HusCavernOfficerScript, -1
	object_event  1,  2, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, HusCavernCooltrainerFScript, -1
