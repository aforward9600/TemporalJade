ScantelesTown_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .Flypoint

.Flypoint:
	setflag ENGINE_FLYPOINT_BLACKTHORN
	return

ScantelesGymSign:
	jumptext ScantelesGymSignText

ScantelesDockSign:
	jumptext ScantelesDockSignText

ScantelesHealingHutSign:
	jumptext ScantelesHealingHutSignText

ScantelesTownFireScript:
	jumptext ScantelesTownFireText

ScantelesDockSignText:
	text "Scanteles Town"
	line "Docks"
	done

ScantelesGymSignText:
	text "Scanteles Town"
	line "#mon Gym"
	cont "Leader: Stratanya"

	para "The unshakable"
	line "Rock master"
	done

ScantelesTownFireText:
	text "The warmth is"
	line "pleasant."
	done

ScantelesHealingHutSignText:
	text "Healing Hut"
	done

ScantelesTown_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 15, 13, DRAGONS_DEN_1F, 3
;	warp_event  3,  3, DRAGONS_DEN_1F, 4
;	warp_event  5, 15, SCANTELES_TOWN, 1
;	warp_event  5, 13, DRAGONS_DEN_1F, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 21, 13, BGEVENT_READ, ScantelesGymSign
	bg_event 24, 19, BGEVENT_READ, ScantelesHealingHutSign
	bg_event 10, 29, BGEVENT_READ, ScantelesDockSign

	db 4 ; object events
	object_event  7, 25, SPRITE_FIRE, SPRITEMOVEDATA_0C, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScantelesTownFireScript, -1
	object_event 13, 15, SPRITE_FIRE, SPRITEMOVEDATA_0C, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScantelesTownFireScript, -1
	object_event 19, 29, SPRITE_FIRE, SPRITEMOVEDATA_0C, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScantelesTownFireScript, -1
	object_event 29, 19, SPRITE_FIRE, SPRITEMOVEDATA_0C, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ScantelesTownFireScript, -1
