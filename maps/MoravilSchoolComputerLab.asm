	object_const_def ; object_event constants
	const MORAVILSCHOOLCOMPUTERLAB_TEACHER
	const MORAVILSCHOOLCOMPUTERLAB_SCHOOLBOY
	const MORAVILSCHOOLCOMPUTERLAB_LASS
	const MORAVILSCHOOLCOMPUTERLAB_YOUNGSTER
	const MORAVILSCHOOLCOMPUTERLAB_BUENA

MoravilSchoolComputerLab_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolComputerLabTeacherScript:
	faceplayer
	opentext
	writetext MoravilSchoolComputerLabTeacherText
	waitbutton
	closetext
	turnobject MORAVILSCHOOLCOMPUTERLAB_TEACHER, UP
	end

MoravilSchoolComputerLabSchoolboyScript:
	faceplayer
	opentext
	writetext MoravilSchoolComputerLabSchoolboyText
	waitbutton
	closetext
	turnobject MORAVILSCHOOLCOMPUTERLAB_SCHOOLBOY, UP
	end

MoravilSchoolComputerLabLassScript:
	faceplayer
	opentext
	writetext MoravilSchoolComputerLabLassText
	waitbutton
	closetext
	turnobject MORAVILSCHOOLCOMPUTERLAB_LASS, UP
	end

MoravilSchoolComputerLabYoungsterScript:
	faceplayer
	opentext
	writetext MoravilSchoolComputerLabYoungsterText
	waitbutton
	closetext
	turnobject MORAVILSCHOOLCOMPUTERLAB_YOUNGSTER, UP
	end

MoravilSchoolComputerLabBuenaScript:
	faceplayer
	opentext
	writetext MoravilSchoolComputerLabBuenaText
	waitbutton
	closetext
	turnobject MORAVILSCHOOLCOMPUTERLAB_BUENA, UP
	end

MoravilSchoolComputerLabLassText:
	text "What's up with"
	line "these questions?"

	para "'Where do you find"
	line "Water-type"
	cont "#mon?'"

	para "Uh, in the water?"

	para "Duh!"
	done

MoravilSchoolComputerLabYoungsterText:
	text "Go away!"

	para "I don't want the"
	line "teacher to know"
	cont "I'm playing Doom!"
	done

MoravilSchoolComputerLabBuenaText:
	text "Studying is so"
	line "boring."

	para "I'm just scrolling"
	line "on Instaham."

	para "It's mostly just"
	line "cute pictures of"
	cont "Tepig."
	done

MoravilSchoolComputerLabTeacherText:
	text "Huh? Yeah, I'm"
	line "keeping an eye on"
	cont "my students and"
	cont "not playing"
	cont "Solitaire."
	done

MoravilSchoolComputerLabSchoolboyText:
	text "I'm almost finished"
	line "with my Master's"
	cont "thesis!"

	para "…Ok, it's just an"
	line "essay on how cute"
	cont "Lillipup is, but"
	cont "it's practically"
	cont "the same thing."
	done

MoravilSchoolComputerLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2, 13, MORAVIL_SCHOOL_HALLWAY, 6
	warp_event  3, 13, MORAVIL_SCHOOL_HALLWAY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  2,  2, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolComputerLabTeacherScript, -1
	object_event  2,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolComputerLabSchoolboyScript, -1
	object_event  4,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolComputerLabLassScript, -1
	object_event  2, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolComputerLabYoungsterScript, -1
	object_event  4, 10, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolComputerLabBuenaScript, -1
