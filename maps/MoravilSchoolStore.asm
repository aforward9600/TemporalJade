	object_const_def ; object_event constants
	const MORAVILSCHOOLSTORE_CLERK
	const MORAVILSCHOOLSTORE_LASS

MoravilSchoolStore_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolClerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VIOLET
	closetext
	end

MoravilSchoolStoreLassScript:
	jumptextfaceplayer MoravilSchoolStoreLassText

MoravilSchoolStoreLassText:
	text "It's too bad I"
	line "can't use an"
	cont "Escape Rope to"
	cont "get out of here."
	done

MoravilSchoolStore_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  5, MORAVIL_SCHOOL_HALLWAY, 5
	warp_event  3,  5, MORAVIL_SCHOOL_HALLWAY, 5

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  3,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolClerk, -1
	object_event  1,  3, SPRITE_LASS, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolStoreLassScript, -1
