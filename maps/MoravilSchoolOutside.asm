	object_const_def ; object_event constants
	const MORAVILSCHOOLOUTSIDE_YOUNGSTER
	const MORAVILSCHOOLOUTSIDE_TWIN
	const MORAVILSCHOOLOUTSIDE_YOUNGSTER2

MoravilSchoolOutside_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolOutsideYoungsterScript:
	jumptextfaceplayer MoravilSchoolOutsideYoungsterText

MoravilSchoolOutsideYoungster2Script:
	jumptextfaceplayer MoravilSchoolOutsideYoungsterText2

MoravilSchoolOutsideTwinScript:
	jumptextfaceplayer MoravilSchoolOutsideTwinText

MoravilSchoolSign:
	jumptext MoravilSchoolSignText

MoravilSchoolOutsideYoungsterText:
	text "Our books are too"
	line "heavy."

	para "I wish we could"
	line "have e-books."
	done

MoravilSchoolOutsideYoungsterText2:
	text "Our school has the"
	line "best grades in the"
	cont "region!"

	para "Well, we're the"
	line "only school in the"
	cont "region, so I guess"
	cont "we're the best by"
	cont "default."
	done

MoravilSchoolOutsideTwinText:
	text "School again…"

	para "Yay…"
	done

MoravilSchoolSignText:
	text "Moravil Trainer"
	line "School"

	para "Test your brain"
	line "at the #mon"
	cont "Gym"
	done

MoravilSchoolOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 11,  7, MURKROW_VALLEY, 1
	warp_event 12,  7, MURKROW_VALLEY, 2
;	warp_event 11,  7, MORAVIL_SCHOOL_HALLWAY, 1
;	warp_event 12,  7, MORAVIL_SCHOOL_HALLWAY, 2
;	warp_event  4, 18, MORAVIL_SCHOOL_GATE, 1
;	warp_event  4, 19, MORAVIL_SCHOOL_HALLWAY, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14, 16, BGEVENT_READ, MoravilSchoolSign

	db 3 ; object events
	object_event  7, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolOutsideYoungsterScript, -1
	object_event 15, 11, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolOutsideTwinScript, -1
	object_event 10, 18, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MoravilSchoolOutsideYoungster2Script, -1
