	object_const_def ; object_event constants
	const ANTIQUOTOWN_GRAMPS
	const ANTIQUOTOWN_PAWN1
	const ANTIQUOTOWN_PAWN2
	const ANTIQUOTOWN_PAWN3
	const ANTIQUOTOWN_KING
	const ANTIQUOTOWN_KNIGHT
	const ANTIQUOTOWN_LASS
	const ANTIQUOTOWN_FISHER
	const ANTIQUOTOWN_TEACHER
	const ANTIQUOTOWN_YOUNGSTER
	const ANTIQUOTOWN_GRAMPS2
	const ANTIQUOTOWN_LASS2
	const ANTIQUOTOWN_FISHER2
	const ANTIQUOTOWN_TWIN

CherrygroveCity_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVECITY_KNIGHTS
	scene_script .DummyScene1 ; SCENE_CHERRYGROVECITY_NOTHING

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	return

AntiquoTownGrampsScript1:
	faceplayer
	opentext
	writetext AntiquoTownGrampsText1
	waitbutton
	closetext
	turnobject ANTIQUOTOWN_GRAMPS, LEFT
	end

CherrygroveCooltrainerFScript:
	jumptextfaceplayer CherrygroveTeacherText_NoMapCard

CherrygroveBugCatcherScript:
	jumptextfaceplayer CherrygroveYoungsterText_NoPokedex

CherrygroveCityLassScript:
	jumptextfaceplayer CherrygroveCityLassText

CherrygroveCitySign:
	jumptext CherrygroveCitySignText

GuideGentsHouseSign:
	jumptext GuideGentsHouseSignText

CherrygroveCityPokecenterSign:
	jumpstd pokecentersign

CherrygroveCityMartSign:
	jumpstd martsign

AntiquoTownLassScript:
	faceplayer
	opentext
	checkevent EVENT_ANTIQUO_TOWN_CROWD
	iftrue .FinishedTownSquare
	writetext AntiquoTownLassText1
	waitbutton
	closetext
	end

.FinishedTownSquare:
	writetext AntiquoTownLassText2
	waitbutton
	closetext
	end

AntiquoTownStop:
	turnobject PLAYER, UP
	turnobject ANTIQUOTOWN_GRAMPS, DOWN
	end

AntiquoTownFisherScript:
	jumptextfaceplayer AntiquoTownFisherText

; EVENT_ANTIQUO_TOWN_TEMPORAS
; EVENT_ANTIQUO_TOWN_KNIGHT

AntiquoTownGrampsScript2:
	jumptextfaceplayer AntiquoTownGrampsText2

AntiquoTownTwinScript:
	jumptextfaceplayer AntiquoTownTwinText

GuideGentMovement1:
	step LEFT
	step LEFT
	step UP
	step LEFT
	turn_head UP
	step_end

GuideGentMovement2:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement3:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

GuideGentMovement4:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	turn_head LEFT
	step_end

GuideGentMovement5:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

GuideGentMovement6:
	step UP
	step UP
	step_end

CherrygroveCity_RivalWalksToYou:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step_end

CherrygroveCity_RivalPushesYouOutOfTheWay:
	big_step DOWN
	turn_head UP
	step_end

CherrygroveCity_UnusedMovementData:
	step LEFT
	turn_head DOWN
	step_end

CherrygroveCity_RivalExitsStageLeft:
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step LEFT
	big_step UP
	big_step UP
	big_step LEFT
	big_step LEFT
	step_end

AntiquoTownGrampsText1:
	text "Looks like some"
	line "kind of speech is"
	cont "going to happen."
	done

AntiquoTownFisherText:
	text "That guy made a"
	line "pretty convincing"
	cont "argument."

	para "Maybe I should"
	line "join them…"
	done

CherrygroveRivalText_Seen:
	text "<……> <……> <……>"

	para "You got a #MON"
	line "at the LAB."

	para "What a waste."
	line "A wimp like you."

	para "<……> <……> <……>"

	para "Don't you get what"
	line "I'm saying?"

	para "Well, I too, have"
	line "a good #MON."

	para "I'll show you"
	line "what I mean!"
	done

SilverCherrygroveWinText:
	text "Humph. Are you"
	line "happy you won?"
	done

CherrygroveRivalText_YouLost:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

SilverCherrygroveLossText:
	text "Humph. That was a"
	line "waste of time."
	done

CherrygroveRivalText_YouWon:
	text "<……> <……> <……>"

	para "My name's ???."

	para "I'm going to be"
	line "the world's great-"
	cont "est #MON"
	cont "trainer."
	done

CherrygroveTeacherText_NoMapCard:
	text "You can get to"
	line "Kanto through New"
	cont "Bark Town, but"
	cont "only Routes 26,"
	cont "27 and 23."

	para "That will lead you"
	line "to the #mon"
	cont "League."

	para "The rest of Kanto"
	line "is off limits."

	para "I've heard a"
	line "#mon professor"
	cont "comes and goes"
	cont "through the gate."

	para "Maybe he's strong"
	line "enough?"

	para "Seems kinda fishy"
	line "to me."
	done

CherrygroveYoungsterText_NoPokedex:
	text "Go East, and you'll"
	line "end up in New Bark"
	cont "Town."
	
	para "There's really"
	line "nothing special,"

	para "but that's what"
	line "makes it cool."
	done

MysticWaterGuyTextBefore:
	text "Hey there!"

	para "Thanks for"
	line "visiting me!"

	para "Here, have this"
	line "Mystic Water as"
	cont "a token of my"
	cont "gratitude!"
	done

MysticWaterGuyTextAfter:
	text "Back to fishing"
	line "for me, then."
	done

CherrygroveCityLassText:
	text "See that guy"
	line "fishing over"
	cont "on that island?"

	para "Apparently, his"
	line "wife isn't happy,"
	cont "and might leave"
	cont "him."

	para "I don't blame her."

	para "Why would you"
	line "build a house on a"
	cont "small island?"
	done

CherrygroveCitySignText:
	text "Antiquo Town"

	para "A picture of"
	line "antiquity"
	done

GuideGentsHouseSignText:
	text "Antiquo Town"
	line "Square"
	done

AntiquoTownGrampsText2:
	text "What did you think"
	line "of that speech?"

	para "He seemed very"
	line "convinced of his"
	cont "beliefs."

	para "Maybe we should"
	line "listen to him,"

	para "before it's too"
	line "late…"
	done

AntiquoTownLassText1:
	text "I think there's"
	line "something going on"
	cont "in the square?"

	para "Any idea what it"
	line "is?"
	done

AntiquoTownLassText2:
	text "So what was it?"

	para "I didn't want to"
	line "walk that far."
	done

AntiquoTownTwinText:
	text "I'm bored!"

	para "I just wanna play"
	line "my Game Boy!"
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29, 11, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 23,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 17,  5, GUIDE_GENTS_HOUSE, 1
	warp_event 19, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event 25,  0, CHERRYGROVE_FISHER_HOUSE, 1

	db 1 ; coord events
	coord_event 12,  9, SCENE_CHERRYGROVECITY_KNIGHTS, AntiquoTownStop

	db 3 ; bg events
	bg_event 37,  9, BGEVENT_READ, CherrygroveCitySign
	bg_event 15,  7, BGEVENT_READ, GuideGentsHouseSign
	bg_event 30, 11, BGEVENT_READ, CherrygroveCityPokecenterSign

	db 14 ; object events
	object_event 12,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownGrampsScript1, EVENT_ANTIQUO_TOWN_CROWD
	object_event  5,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  6,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  7,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  6,  6, SPRITE_KING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  2,  9, SPRITE_KNIGHT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_KNIGHT
	object_event  4,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  5, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  8, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  9,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event 34, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownGrampsScript2, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event 19,  7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownLassScript, -1
	object_event  7, 11, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AntiquoTownFisherScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event 25, 12, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AntiquoTownTwinScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
