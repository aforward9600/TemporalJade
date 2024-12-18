	object_const_def ; object_event constants

OrrianDesert_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

OrrianDesertSign:
	jumptext OrrianDesertSignText

OrrianDesertSignText:
	text "Orrian Desert"

	para "Named in honor of"
	line "our allies in the"
	cont "Orre region."

	para "Zaconia City -"
	line "Scanteles Town"
	done

OrrianDesert_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events
;	warp_event 15,  9, AZALEA_POKECENTER_1F, 1
;	warp_event 21, 13, CHARCOAL_KILN, 1
;	warp_event 21,  5, AZALEA_MART, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event 43, 27, BGEVENT_READ, OrrianDesertSign

	db 0 ; object events
;	object_event 19, 15, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownCooltrainerScript, EVENT_AZALEA_TOWN_SLOWPOKETAIL_ROCKET
;	object_event 21,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownGrampsScript, -1
;	object_event 15, 13, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AzaleaTownTeacherScript, -1
;	object_event  7,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, AzaleaTownYoungsterScript, -1
;	object_event  8, 17, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
;	object_event 18,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
;	object_event 29,  9, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
;	object_event 15, 15, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownSlowpokeScript, EVENT_AZALEA_TOWN_SLOWPOKES
;	object_event  8,  2, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, WhiteApricornTree, -1
;	object_event 15, 16, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_AZALEA_TOWN
;	object_event 30, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownRocket2Script, EVENT_SLOWPOKE_WELL_ROCKETS
;	object_event  6,  5, SPRITE_KURT_OUTSIDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AzaleaTownKurtScript, EVENT_AZALEA_TOWN_KURT
