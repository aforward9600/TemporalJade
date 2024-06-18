	object_const_def ; object_event constants
	const MORAVILSCHOOLHALLWAY_RECEPTIONIST
	const MORAVILSCHOOLHALLWAY_TWIN
	const MORAVILSCHOOLHALLWAY_SCIENTIST

MoravilSchoolHallway_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolHallwayReceptionistScript:
	jumptextfaceplayer MoravilSchoolHallwayReceptionistText

MoravilSchoolHallwayScientistScript:
	jumptextfaceplayer MoravilSchoolHallwayScientistText

MoravilSchoolHallwayTwinScript:
	jumptextfaceplayer MoravilSchoolHallwayTwinText

NursesOfficeSign:
	jumptext NursesOfficeSignText

SchoolStoreSign:
	jumptext SchoolStoreSignText

SchoolGymSign:
	jumptext SchoolGymSignText

ComputerLabSign:
	jumptext ComputerLabSignText

ClassroomSign:
	jumptext ClassroomSignText

MoravilSchoolHallwayReceptionistText:
	text "Welcome to Moravil"
	line "Trainer School!"

	para "If you are looking"
	line "to earn a badge,"

	para "the door you want"
	line "is the last door"
	cont "on your left."

	para "Have a good day!"
	done

MoravilSchoolHallwayScientistText:
	text "Grading papers is"
	line "so boring!"

	para "I wish I could be"
	line "battling students"
	cont "like Steve!"
	done

MoravilSchoolHallwayTwinText:
	text "I should be in"
	line "class right now,"

	para "but I don't wanna"
	line "be in class."
	done

NursesOfficeSignText:
	text "Nurse's Office"
	done

SchoolGymSignText:
	text "Library"
	done

SchoolStoreSignText:
	text "School Store"
	done

ComputerLabSignText:
	text "Computer Lab"
	done

ClassroomSignText:
	text "Classroom A"
	done

MoravilSchoolHallway_MapEvents:
	db 0, 0 ; filler

	db 8 ; warp events
	warp_event  2, 13, MORAVIL_SCHOOL_OUTSIDE, 1
	warp_event  3, 13, MORAVIL_SCHOOL_OUTSIDE, 2
	warp_event  3,  1, MORAVIL_SCHOOL_NURSES_OFFICE, 1
	warp_event 15,  1, EARLS_POKEMON_ACADEMY, 1
	warp_event  7,  1, MORAVIL_SCHOOL_STORE, 1
	warp_event 11,  1, MORAVIL_SCHOOL_COMPUTER_LAB, 1
	warp_event 11,  5, MORAVIL_SCHOOL_PLAYGROUND, 1
	warp_event 12,  5, MORAVIL_SCHOOL_PLAYGROUND, 2

	db 0 ; coord events

	db 5 ; bg events
	bg_event  2,  1, BGEVENT_READ, NursesOfficeSign
	bg_event  6,  1, BGEVENT_READ, SchoolStoreSign
	bg_event 10,  1, BGEVENT_READ, ComputerLabSign
	bg_event 14,  1, BGEVENT_READ, ClassroomSign
	bg_event 18,  1, BGEVENT_READ, SchoolGymSign

	db 3 ; object events
	object_event  0, 12, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolHallwayReceptionistScript, -1
	object_event  1,  5, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolHallwayTwinScript, -1
	object_event 18,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MoravilSchoolHallwayScientistScript, -1
