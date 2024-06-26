	object_const_def ; object_event constants
	const ROUTE38ECRUTEAKGATE_OFFICER

Route38EcruteakGate_MapScripts:
	db 2 ; scene scripts
	scene_script .Dummy0 ; SCENE_DEFAULT
	scene_script .Dummy1 ; SCENE_ECRUTEAK_GATE_RIVAL

	db 0 ; callbacks

.Dummy0:
	end

.Dummy1:
	end

Route38EcruteakGateOfficerScript:
	jumptextfaceplayer MoravilGateGuardText4

MoravilGateGuardStopsYou2:
	applymovement PLAYER, MoravilGateMovement1
MoravilGateGuardStopsYou1:
	turnobject PLAYER, UP
	opentext
	writetext MoravilGateGuardText1
	waitbutton
	checkflag ENGINE_GLACIERBADGE
	iftrue .MoravilGateGuardDoesntStopYou
	writetext MoravilGateGuardText2
	waitbutton
	closetext
	applymovement PLAYER, MoravilGateMovement2
	end

.MoravilGateGuardDoesntStopYou:
	writetext MoravilGateGuardText3
	waitbutton
	closetext
	setscene SCENE_ECRUTEAK_GATE_RIVAL
	end

MoravilGateMovement1:
	step UP
	step_end

MoravilGateMovement2:
	step RIGHT
	step_end

MoravilGateGuardText1:
	text "Hold it!"

	para "Do you have the"
	line "right clearance?"
	done

MoravilGateGuardText2:
	text "I'm sorry, but you"
	line "don't have the"
	cont "LearnedBadge yet."

	para "Come back after"
	line "you earn one from"
	cont "the Moravil School"
	cont "Gym."
	done

MoravilGateGuardText3:
	text "Ah, that's the"
	line "LearnedBadge!"

	para "My mistake!"

	para "Please, go on"
	line "through!"
	done

MoravilGateGuardText4:
	text "The sands of"
	line "Crescent Lake"
	cont "can hide #mon"
	cont "beneath."
	done

Route38EcruteakGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  4, ROUTE_31, 1
	warp_event  0,  5, ROUTE_31, 2
	warp_event  9,  4, MORAVIL_SCHOOL_OUTSIDE, 3
	warp_event  9,  5, MORAVIL_SCHOOL_OUTSIDE, 4

	db 2 ; coord events
	coord_event 5, 4, SCENE_DEFAULT, MoravilGateGuardStopsYou1
	coord_event 5, 5, SCENE_DEFAULT, MoravilGateGuardStopsYou2

	db 0 ; bg events

	db 1 ; object events
	object_event  5,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route38EcruteakGateOfficerScript, -1
