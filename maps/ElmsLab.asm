	object_const_def ; object_event constants
	const JUNIPERSLAB_JUNIPER
	const JUNIPERSLAB_BIANCA
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const JUNIPERSLAB_RIVAL

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	db 0 ; callbacks

.MeetElm:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

ProfJuniperScript:
	faceplayer
	opentext
	checkscene 
	ifequal SCENE_JUNIPERSLAB_CANT_LEAVE, .JunipersLabCantLeave
	iftrue .JunipersLabCantLeave
	writetext FirstElmText
	waitbutton
	closetext
	setevent EVENT_SPOKE_WITH_ELM
	setevent EVENT_BLACKTHORN_CITY_SUPER_NERD_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_SUPER_NERD_DOES_NOT_BLOCK_GYM
	setevent EVENT_DARK_CAVE_GUARD
	setevent EVENT_MASTERS_HOUSE_MASTER
	end

.JunipersLabCantLeave:
	writetext ProfJuniperPickText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

JunipersLabBiancaScript:
	faceplayer
	opentext
	clearevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue .JunipersLabBianca2
	writetext JunipersLabBiancaText1
	waitbutton
	closetext
	end

.JunipersLabBianca2:
	writetext JunipersLabBiancaText2
	waitbutton
	closetext
	end

JunipersLabRivalScript:
	jumptextfaceplayer JunipersLabRivalText3

MeetJuniperScript:
	applymovement PLAYER, MeetJuniperScript_WalkRight

MeetJuniperScript2:
	applymovement PLAYER, MeetJuniperScript_WalkUp
	turnobject JUNIPERSLAB_RIVAL, RIGHT
	opentext
	writetext JunipersLabRivalText1
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, UP
	turnobject JUNIPERSLAB_RIVAL, UP
	pause 10
	opentext
	writetext JunipersLabGreetingsText
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, LEFT
	turnobject JUNIPERSLAB_RIVAL, RIGHT
	opentext
	writetext JunipersLabRivalText2
	waitbutton
	closetext
	setscene SCENE_JUNIPERSLAB_CANT_LEAVE
	end

ElmsLabWindow:
	opentext
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

JunipersLabCantLeaveScript:
	opentext
	writetext JunipersLabCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, JunipersLab_CantLeaveMovement
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2:
; unused
	jumpstd trashcan

ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

JunipersLab_CantLeaveMovement:
	step UP
	step_end

MeetJuniperScript_WalkRight:
	step RIGHT
	step_end

MeetJuniperScript_WalkUp:
	step UP
	step UP
	turn_head LEFT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

FirstElmText:
	text "Hello!"

	para "Who might you be?"

	para "……<PLAYER>? I see!"
	
	para "I am Prof. Elm!"

	para "I'm a researcher of"
	line "#mon evolution!"

	para "Where do they come"
	line "from?"

	para "How do they"
	line "change?"

	para "These are the"
	line "answers I seek!"

	para "Feel free to look"
	line "through the book-"
	cont "shelves for my"
	cont "notes!"

	para "They could help!"
	done

JunipersLabRivalText1:
	text "<RIVAL>: Took ya"
	line "long enough!"

	para "I was afraid I'd"
	line "have to start"
	cont "without you!"
	done

JunipersLabGreetingsText:
	text "Juniper: Hello,"
	line "<PLAYER>!"

	para "It looks like"
	line "today's the day,"
	cont "huh?"

	para "You've both been"
	line "waiting a while"
	cont "to start your"
	cont "journeys, haven't"
	cont "you?"

	para "Looking to take on"
	line "the #mon"
	cont "League…"

	para "You remind me of a"
	line "group of kids from"
	cont "a few years ago."

	para "My assistant"
	line "Bianca happens to"
	cont "be one of them!"

	para "But enough getting"
	line "lost in the past."

	para "It's time to look"
	line "to the future!"

	para "I have three"
	line "#mon here from"
	cont "around the world."

	para "Pick which one"
	line "shall be your"
	cont "partner!"
	done

JunipersLabRivalText2:
	text "<RIVAL>: Go ahead!"

	para "You make the first"
	line "move!"

	para "It'll give me an"
	line "advantage!"

	para "Heh heh!"
	done

JunipersLabCantLeaveText:
	text "Juniper: Are you"
	line "going to leave"
	cont "without a"
	cont "#mon?"
	done

JunipersLabRivalText3:
	text "<RIVAL>: You still"
	line "haven't picked"
	cont "yet?"
	done

SecondElmText:
	text "Have my notes been"
	line "helpful?"

	para "I look forward to"
	line "learning more"
	cont "about #mon!"
	done

ElmPokeBallText:
	text "It contains a"
	line "#mon caught by"
	cont "Prof.Elm."
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #mon?"
	done

JunipersLabBiancaText1:
	text "Bianca: Hey,"
	line "<PLAYER>!"

	para "Can you believe"
	line "it's only been"
	cont "2 years since the"
	cont "lab was built?"

	para "This area was"
	line "perfect for our"
	cont "research!"

	para "It's strange to"
	line "think how little"
	cont "technology there"
	cont "was out here."

	para "You guys didn't"
	line "even have internet"
	cont "until we got here!"

	para "You guys adapt"
	line "really well to new"
	cont "technology!"
	done

JunipersLabBiancaText2:
	text "Bianca: I tend to"
	line "travel for the"
	cont "Professor every"
	cont "now and then,"

	para "So you may see me"
	line "elsewhere!"

	para "Good luck on your"
	line "journey!"

	para "Be seein' ya!"
	done

ElmsLabOfficerText1:
	text "Hm?"

	para "You there!"
	line "That journal you"
	cont "have!"

	para "May I see it?"

	para "………Wonderful!"

	para "These drawings and"
	line "descriptions are"
	cont "so detailed!"

	para "You did all these?"
	line "Truly incredible!"

	para "I'm working on a"
	line "high-tech"
	cont "encyclopedia of"
	cont "#mon!"

	para "It's still in the"
	line "early stages, so I"
	cont "haven't made one."

	para "…Oh, where are my"
	line "manners? I haven't"
	cont "introduced myself!"

	para "I am Prof. Oak."

	para "I was visiting my"
	line "student, er, I"
	cont "mean, my former"
	cont "student Elm."

	para "He has recently"
	line "become a #mon"
	cont "Professor himself,"
	cont "and I wanted to"
	cont "congratulate him!"

	para "And your name is?"

	para "………Ah, <PLAYER>,"
	line "is it?"

	para "Well met!"

	para "I'm afraid I must"
	line "be going, but I"
	cont "think we will meet"
	cont "again soon!"
	done

ElmsLabWindowText1:
	text "The window's open."

	para "A pleasant breeze"
	line "is blowing in."
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Eevee is"
	line "incredible!"

	para "It can evolve into"
	line "8 different"
	cont "#mon!"

	para "Water Stone:"
	line "Vaporeon."
	
	para "Thunderstone:"
	line "Jolteon."

	para "Fire Stone:"
	line "Flareon."

	para "Sun Stone:"
	line "Espeon."

	para "Moon Stone:"
	line "Umbreon."

	para "Leaf Stone:"
	line "Leafeon."

	para "Ice Stone:"
	line "Glaceon."

	para "Shiny Stone:"
	line "Sylveon."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Dusk Stone can be"
	line "used to evolve"
	cont "Murkrow, Dusclops"
	cont "and Misdreavus!"

	para "Astounding!"

	para "Shiny Stone can"
	line "be used to evolve"
	cont "Togetic and Eevee!"

	para "Remarkable!"

	para "Dawn Stone can be"
	line "used to evolve"
	cont "Kirlia and"
	cont "Snorunt!"
	
	para "Note: Only male"
	line "Kirlia and female"
	cont "Snorunt evolve by"
	cont "this manner."

	para "Need to research"
	line "further."

	para "Ice Stone can be"
	line "used to evolve"
	cont "Piloswine and"
	cont "Eevee!"

	para "Stupendous!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Link Cable:"

	para "In the past,"
	line "certain #mon"
	cont "required trading"
	cont "between two people"
	cont "to evolve."

	para "In recent years,"
	line "Silph Co. created"
	cont "an artificial"
	cont "device to induce"
	cont "evolution called"
	cont "the Link Cable!"

	para "Kadabra, Machoke,"
	line "Graveler, and"
	cont "Haunter are"
	cont "compatible."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Sneasel and Gligar"
	line "evolve through"
	cont "the use of Razor"
	cont "items, Claw and"
	cont "Fang respectively."

	para "Electabuzz and"
	line "Magmar evolve with"
	cont "Electrizer and"
	cont "Magmarizer"
	cont "respectively."

	para "These items are"
	line "not manufactured"
	cont "in Johto, and are"
	cont "often trafficked"
	cont "from Sinnoh."

	para "So I've heard."
	done

ElmsLabTrashcanText:
	text "The wrapper from"
	line "the snack Prof.Elm"
	cont "ate is in there…"
	done

ElmsLabPCText:
	text "Observations On"
	line "#mon Evolution"

	para "…It says on the"
	line "screen…"
	done

ProfJuniperPickText:
	text "Juniper: Go on and"
	line "pick your partner!"

	para "The choice is all"
	line "yours!"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, MURKROW_VALLEY, 1
	warp_event  5, 11, MURKROW_VALLEY, 1

	db 4 ; coord events
	coord_event  4,  5, SCENE_DEFAULT, MeetJuniperScript
	coord_event  5,  5, SCENE_DEFAULT, MeetJuniperScript2
	coord_event  4,  6, SCENE_JUNIPERSLAB_CANT_LEAVE, JunipersLabCantLeaveScript
	coord_event  5,  6, SCENE_JUNIPERSLAB_CANT_LEAVE, JunipersLabCantLeaveScript

	db 16 ; bg events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	db 6 ; object events
	object_event  5,  2, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfJuniperScript, -1
	object_event  2,  9, SPRITE_BIANCA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JunipersLabBiancaScript, EVENT_JUNIPERS_LAB_BIANCA
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LookAtElmPokeBallScript, -1
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LookAtElmPokeBallScript, -1
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, LookAtElmPokeBallScript, -1
	object_event  4,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JunipersLabRivalScript, EVENT_JUNIPERS_LAB_RIVAL
