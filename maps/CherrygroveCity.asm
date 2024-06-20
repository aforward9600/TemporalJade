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
	db 3 ; scene scripts
	scene_script .DummyScene0 ; SCENE_CHERRYGROVECITY_KNIGHTS
	scene_script .DummyScene1 ; SCENE_CHERRYGROVECITY_NOTHING
	scene_script .DummyScene2

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.DummyScene2:
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
	opentext
	writetext SomethingInTownSquareText
	waitbutton
	yesorno
	iffalse .PushPlayerBack
	closetext
	turnobject ANTIQUOTOWN_GRAMPS, LEFT
	applymovement PLAYER, PlayerMovesToSquareMovement
	pause 15
	applymovement ANTIQUOTOWN_PAWN2, Pawn2MovesDownMovement
	pause 10
	applymovement ANTIQUOTOWN_KING, AntiquoTownKingMovesDownMovement
	special FadeOutMusic
	pause 30
	playmusic MUSIC_KNIGHTS_TEMPORA
	pause 5
	applymovement ANTIQUOTOWN_PAWN2, Pawn2MovesBackIntoPlaceMovement
	opentext
	writetext AntiquoTownKingText1
	waitbutton
	closetext
	pause 10
	applymovement ANTIQUOTOWN_KING, AntiquoTownKingMovesRight
	pause 10
	opentext
	writetext AntiquoTownKingText2
	waitbutton
	closetext
	pause 10
	applymovement ANTIQUOTOWN_KING, AntiquoTownKingMovesLeft
	pause 10
	opentext
	writetext AntiquoTownKingText3
	waitbutton
	closetext
	pause 10
	applymovement ANTIQUOTOWN_KING, AntiquoTownKingMovesRight
	pause 10
	opentext
	writetext AntiquoTownKingText4
	waitbutton
	closetext
	pause 10
	applymovement ANTIQUOTOWN_PAWN2, Pawn2MovesDownMovement
	pause 5
	applymovement ANTIQUOTOWN_KING, AntiquoTownKingMovesUpMovement
	disappear ANTIQUOTOWN_KING
	pause 5
	applymovement ANTIQUOTOWN_PAWN2, AntiquoTownPawn1LeavesMovement
	disappear ANTIQUOTOWN_PAWN2
	pause 5
	applymovement ANTIQUOTOWN_PAWN1, AntiquoTownPawnLeavesMovement
	disappear ANTIQUOTOWN_PAWN1
	pause 5
	applymovement ANTIQUOTOWN_PAWN3, AntiquoTownPawnLeavesMovement
	disappear ANTIQUOTOWN_PAWN3
	pause 10
	turnobject ANTIQUOTOWN_LASS, DOWN
	turnobject ANTIQUOTOWN_YOUNGSTER, DOWN
	opentext
	writetext AntiquoTownCivilliansText
	waitbutton
	closetext
	applymovement ANTIQUOTOWN_GRAMPS, AntiquoTownKingMovesRight
	disappear ANTIQUOTOWN_GRAMPS
	applymovement ANTIQUOTOWN_YOUNGSTER, AntiquoTownYoungsterLeavesMovement
	disappear ANTIQUOTOWN_YOUNGSTER
	applymovement ANTIQUOTOWN_LASS, AntiquoTownYoungsterLeavesMovement
	applymovement ANTIQUOTOWN_LASS, AntiquoTownYoungsterLeavesMovement
	applymovement ANTIQUOTOWN_LASS, AntiquoTownYoungsterLeavesMovement
	disappear ANTIQUOTOWN_LASS
	applymovement ANTIQUOTOWN_TEACHER, AntiquoTownTeacherLeavesMovement
	disappear ANTIQUOTOWN_TEACHER
	applymovement ANTIQUOTOWN_FISHER, AntiquoTownFisherLeavesMovement
	turnobject ANTIQUOTOWN_FISHER2, RIGHT
	appear ANTIQUOTOWN_FISHER2
	disappear ANTIQUOTOWN_FISHER
	callasm UpdateSprites
	setscene SCENE_CHERRYGROVECITY_KNIGHT
	clearevent EVENT_ANTIQUO_TOWN_CIVILLIANS
	special FadeOutMusic
	pause 10
	special RestartMapMusic
	waitsfx
	playmapmusic
	end

.PushPlayerBack:
	writetext GoToPokemonCenterText
	waitbutton
	closetext
	applymovement PLAYER, PlayerMovesRightMovement
	turnobject ANTIQUOTOWN_GRAMPS, LEFT
	end

AntiquoTownFisherScript:
	jumptextfaceplayer AntiquoTownFisherText

; EVENT_ANTIQUO_TOWN_TEMPORAS
; EVENT_ANTIQUO_TOWN_KNIGHT

AntiquoTownGrampsScript2:
	jumptextfaceplayer AntiquoTownGrampsText2

AntiquoTownTwinScript:
	jumptextfaceplayer AntiquoTownTwinText

AntiquoTownKnightStopLeft:
AntiquoTownKnightStopRight:
	end

Pawn2MovesDownMovement:
	step UP
	step LEFT
	turn_head RIGHT
	step_end

PlayerMovesRightMovement:
	step RIGHT
	step_end

PlayerMovesToSquareMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	turn_head UP
	step_end

AntiquoTownKingMovesDownMovement:
	step DOWN
	step DOWN
	step DOWN
	step_end

Pawn2MovesBackIntoPlaceMovement:
	step RIGHT
	step DOWN
	step_end

AntiquoTownKingMovesLeft:
	slow_step LEFT
	slow_step LEFT
	turn_head DOWN
	step_end

AntiquoTownKingMovesRight:
	slow_step RIGHT
	turn_head DOWN
	step_end

AntiquoTownYoungsterLeavesMovement:
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

AntiquoTownKingMovesUpMovement:
	step UP
	step UP
	step UP
	step_end

AntiquoTownPawn1LeavesMovement:
	step UP
	step_end

AntiquoTownPawnLeavesMovement:
	step UP
	step UP
	step_end

AntiquoTownTeacherLeavesMovement:
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

AntiquoTownFisherLeavesMovement:
	step DOWN
	step RIGHT
	step RIGHT
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

AntiquoTownKingText1:
	text "People of Antiquo"
	line "Town, I beg of you"
	cont "to lend me your"
	cont "ears."

	para "For centuries, the"
	line "people of our land"
	cont "lived in harmony"
	cont "with nature."

	para "That all changed"
	line "with the creation"
	cont "of the advanced"
	cont "technology so"
	cont "many depend on."
	done

AntiquoTownKingText2:
	text "It indeed makes"
	line "our lives more"
	cont "convenient, but I"
	cont "ask you:"

	para "Is it worth the"
	line "price nature has"
	cont "paid?"

	para "Surely you haven't"
	line "forgotten what"
	cont "happened to the"
	cont "Black River?"

	para "Pollution from the"
	line "first Metron plant"
	cont "caused the river"
	cont "to turn a sickly"
	cont "color, permanently"
	cont "damaging our"
	cont "population of"
	cont "Corsola."

	para "The once vibrant"
	line "pink colors gave"
	cont "way to a dead"
	cont "white."

	para "Haven't they"
	line "suffered enough?"
	done

AntiquoTownKingText3:
	text "Need I remind you"
	line "of the acid rain"
	cont "that plagued us"
	cont "for so long?"

	para "It is true that"
	line "we have cleaned up"
	cont "the Black River,"

	para "and the acid rain"
	line "has subsided, but"
	cont "what will happen"
	cont "when we encounter"
	cont "a threat that we"
	cont "cannot solve?"

	para "I truly believe"
	line "that threat is"
	cont "fast approaching."

	para "Our environment"
	line "will reach its"
	cont "breaking point,"
	cont "and there will be"
	cont "nothing we can do"
	cont "to avoid the end."

	para "Unless, we do"
	line "something about"
	cont "it now."
	done

AntiquoTownKingText4:
	text "Please, for the"
	line "sake of our world,"
	cont "consider our plea."

	para "Abandon the modern"
	line "technology you"
	cont "have, and return"
	cont "to the ways of"
	cont "old, the ways of"
	cont "our forefathers."

	para "Through this, we"
	line "can avoid the"
	cont "catastrophe that"
	cont "awaits us at the"
	cont "end of this"
	cont "current path."

	para "If you wish to"
	line "do more to help,"
	cont "then join us."

	para "We are the Knights"
	line "Tempora, and we"
	cont "will create a"
	cont "bright future,"
	cont "one where nature"

	para "is healed and we"
	line "live within it in"
	cont "peace and harmony."

	para "I thank you for"
	line "your time."

	para "Please consider"
	line "what I have said."
	done

SomethingInTownSquareText:
	text "Something's going"
	line "on in the square"
	cont "right now."

	para "Will you go?"
	done

GoToPokemonCenterText:
	text "It's probably best"
	line "if you don't."

	para "You never know"
	line "what will happen"
	cont "in large crowds."
	done

AntiquoTownCivilliansText:
	text "Lass: I don't want"
	line "to give up my"
	cont "#gear!"

	para "I love it too"
	line "much!"

	para "Mother: Aren't you"
	line "worried about what"
	cont "he said?"

	para "That a great"
	line "catastrophe awaits"
	cont "us if we don't"
	cont "stop using"
	cont "technology?"

	para "Kid: Sounds like a"
	line "lot of Tauros dung"
	cont "to me!"

	para "Fisher: I'm with"
	line "the knights on"
	cont "this one!"

	para "Things aren't the"
	line "same as they were"
	cont "in the good old"
	cont "days!"

	para "I could go for"
	line "that!"

	para "Youngster: Eh,"
	line "what do you"
	cont "know?"

	para "This is boring."

	para "I'm gonna go"
	line "home and play"
	cont "video games!"

	para "Fisher: Hmph!"

	para "Suit yourself,"
	line "kid!"
	done

CherrygroveCity_MapEvents:
	db 0, 0 ; filler

	db 6 ; warp events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29, 11, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 23,  7, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 17,  5, CHERRYGROVE_FISHER_HOUSE, 1
	warp_event 19, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event 25,  0, GUIDE_GENTS_HOUSE, 1

	db 3 ; coord events
	coord_event 12,  9, SCENE_CHERRYGROVECITY_KNIGHTS, AntiquoTownStop
	coord_event  6,  3, SCENE_CHERRYGROVECITY_KNIGHT, AntiquoTownKnightStopLeft
	coord_event  7,  3, SCENE_CHERRYGROVECITY_KNIGHT, AntiquoTownKnightStopRight

	db 3 ; bg events
	bg_event 37,  9, BGEVENT_READ, CherrygroveCitySign
	bg_event 15,  7, BGEVENT_READ, GuideGentsHouseSign
	bg_event 30, 11, BGEVENT_READ, CherrygroveCityPokecenterSign

	db 14 ; object events
	object_event 12,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownGrampsScript1, EVENT_ANTIQUO_TOWN_CROWD
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  6,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  7,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  6,  4, SPRITE_KING, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_TEMPORAS
	object_event  6,  7, SPRITE_KNIGHT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_KNIGHT
	object_event  4,  8, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  5, 10, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  8, 10, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event  9,  8, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ANTIQUO_TOWN_CROWD
	object_event 34, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownGrampsScript2, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event 19,  7, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownLassScript, -1
	object_event  7, 11, SPRITE_FISHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AntiquoTownFisherScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
	object_event 25, 12, SPRITE_TWIN, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, AntiquoTownTwinScript, EVENT_ANTIQUO_TOWN_CIVILLIANS
