	object_const_def ; object_event constants
	const MORAVILSCHOOLNURSESOFFICE_NURSE
	const MORAVILSCHOOLNURSESOFFICE_CHANSEY

MoravilSchoolNursesOffice_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolNursesOfficeNurse:
	faceplayer
	opentext
	writetext MoravilSchoolNursesOfficeNurseText1
	yesorno
	iffalse .DidNotHeal
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MoravilSchoolNursesOfficeNurseText2
	waitbutton
	closetext
	turnobject MORAVILSCHOOLNURSESOFFICE_NURSE, UP
	pause 5
	turnobject MORAVILSCHOOLNURSESOFFICE_NURSE, DOWN
	end

.DidNotHeal:
	writetext MoravilSchoolNursesOfficeNurseTextNo
	waitbutton
	closetext
	turnobject MORAVILSCHOOLNURSESOFFICE_NURSE, UP
	pause 5
	turnobject MORAVILSCHOOLNURSESOFFICE_NURSE, DOWN
	end

MoravilSchoolNursesOfficeChansey:
	refreshscreen
	pokepic CHANSEY
	cry CHANSEY
	waitbutton
	closepokepic
	opentext
	writetext MoravilSchoolNursesOfficeChanseyText
	waitbutton
	closetext
	end

MoravilSchoolNursesOfficeNurseText1:
	text "Would you like to"
	line "rest your #mon?"
	done

MoravilSchoolNursesOfficeNurseTextNo:
	text "Feel free to come"
	line "back anytime."
	done

MoravilSchoolNursesOfficeNurseText2:
	text "They should be all"
	line "set now!"

	para "Come back if your"
	line "#mon become"
	cont "tired!"
	done

MoravilSchoolNursesOfficeChanseyText:
	text "Chansey: Chans!"
	done

MoravilSchoolNursesOffice_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, MORAVIL_SCHOOL_HALLWAY, 3
	warp_event  3,  7, MORAVIL_SCHOOL_HALLWAY, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  2, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolNursesOfficeNurse, -1
	object_event  4,  5, SPRITE_CHANSEY, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolNursesOfficeChansey, -1
