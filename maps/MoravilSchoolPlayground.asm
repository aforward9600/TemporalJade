	object_const_def ; object_event constants
	const MORAVILSCHOOLPLAYGROUND_RIVAL
	const MORAVILSCHOOLPLAYGROUND_SCHOOLBOY
	const MORAVILSCHOOLPLAYGROUND_LASS
	const MORAVILSCHOOLPLAYGROUND_KID
	const MORAVILSCHOOLPLAYGROUND_TWIN

MoravilSchoolPlayground_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolPlaygroundSchoolboyScript:
	faceplayer
	opentext
	checkevent EVENT_SCHOOL_RIVAL
	iftrue .RivalGone
	writetext MoravilSchoolPlaygroundSchoolboyText1
	waitbutton
	closetext
	end

.RivalGone:
	writetext MoravilSchoolPlaygroundSchoolboyText2
	waitbutton
	closetext
	end

MoravilSchoolPlaygroundKidScript:
	jumptext MoravilSchoolPlaygroundKidText

MoravilSchoolPlaygroundTwinScript:
	jumptext MoravilSchoolPlaygroundTwinText

MoravilSchoolPlaygroundLassScript:
	jumptextfaceplayer MoravilSchoolPlaygroundLassText

MoravilSchoolRival:
	opentext
	writetext MoravilSchoolRivalWhosNextText
	waitbutton
	closetext
	end

MoravilSchoolPlaygroundKidText:
	text "Aw man! I always"
	line "lose this game!"
	done

MoravilSchoolPlaygroundLassText:
	text "I just like to"
	line "skip rope all"
	cont "by myself during"
	cont "recess."
	done

MoravilSchoolPlaygroundSchoolboyText1:
	text "Dang it!"

	para "I lost!"
	done

MoravilSchoolPlaygroundSchoolboyText2:
	text "Maybe I can win"
	line "now."

	para "…Oh, who am I"
	line "kidding?"
	done

MoravilSchoolPlaygroundTwinText:
	text "I'll be the"
	line "mommy, and you'll"
	cont "be the daddy!"
	done

MoravilSchoolRivalWhosNextText:
	text "Alright! Who's"
	line "up next?"
	done

MoravilSchoolPlayground_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9,  5, MORAVIL_SCHOOL_HALLWAY, 7
	warp_event 10,  5, MORAVIL_SCHOOL_HALLWAY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  8,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolRival, EVENT_SCHOOL_RIVAL
	object_event 11,  9, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundSchoolboyScript, -1
	object_event 15,  9, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundLassScript, -1
	object_event  3, 10, SPRITE_KID, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundKidScript, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundTwinScript, -1
