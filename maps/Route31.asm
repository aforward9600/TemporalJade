	object_const_def ; object_event constants
	const ROUTE31_COOLTRAINER_M1
	const ROUTE31_COOLTRAINER_M2
	const ROUTE31_COOLTRAINER_F1
	const ROUTE31_COOLTRAINER_F2
	const ROUTE31_YOUNGSTER
	const ROUTE31_FISHER
	const ROUTE31_FRUIT_TREE
	const ROUTE31_POKE_BALL

Route31_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerCooltrainermJuan:
	trainer COOLTRAINERM, JUAN, EVENT_BEAT_COOLTRAINERM_JUAN, CooltrainermJuanSeenText, CooltrainermJuanBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermJuanAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainermGaven3:
	trainer COOLTRAINERM, GAVEN1, EVENT_BEAT_COOLTRAINERM_GAVEN, CooltrainermGaven3SeenText, CooltrainermGaven3BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermGavenAfterText
	waitbutton
	closetext
	end

TrainerCooltrainerfMary:
	trainer COOLTRAINERF, MARY1, EVENT_BEAT_COOLTRAINERF_MARY, CooltrainerfMarySeenText, CooltrainerfMaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfMaryAfterBattleText
	waitbutton
	closetext
	end

TrainerCooltrainerfTessa:
	trainer COOLTRAINERF, BETH1, EVENT_BEAT_COOLTRAINERF_TESSA, CooltrainerfTessaSeenText, CooltrainerfTessaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfTessaAfterText
	waitbutton
	closetext
	end

Route31PsychicScript:
	jumptextfaceplayer Route31PsychicText

Route31FisherScript:
	jumptextfaceplayer Route31FisherText

Route31Sign:
	jumptext Route31SignText

Route31HusCavernSign:
	jumptext Route31HusCavernSignText

Route31FruitTree:
	fruittree FRUITTREE_ROUTE_31

Route31MaxElixer:
	itemball TM_DRAGON_PULSE

CooltrainermJuanSeenText:
	text "Vaporeon is one"
	line "of my favorite"
	cont "#mon!"

	para "…"

	para "Why are you"
	line "looking at me"
	cont "like that for?"
	done

CooltrainermJuanBeatenText:
	text "Was it something"
	line "I said?"
	done

CooltrainermJuanAfterBattleText:
	text "Did you know that"
	line "in terms of battle"
	cont "capabilities,"

	para "that Vaporeon is"
	line "neat?"

	para "…"

	para "What did you think"
	line "I was going to"
	cont "say?"
	done

CooltrainermGaven3SeenText:
	text "It's time to make"
	line "my dreams come"
	cont "true!"
	done

CooltrainermGaven3BeatenText:
	text "I can't give up!"
	done

CooltrainermGavenAfterText:
	text "I just need to"
	line "work on my team's"
	cont "strengths!"

	para "Then we'll be"
	line "unstoppable!"
	done

CooltrainerfMarySeenText:
	text "If I beat you,"
	line "I think I'll have"
	cont "the confidence to"

	para "take on the"
	line "#mon League!"
	done

CooltrainerfMaryBeatenText:
	text "Maybe I'm not"
	line "ready…"
	done

CooltrainerfMaryAfterBattleText:
	text "I've defeated"
	line "eight Gym Leaders,"

	para "but I guess I'm"
	line "not quite there"
	cont "yet…"
	done

CooltrainerfTessaSeenText:
	text "Let's see who's"
	line "ready for the"
	cont "#mon League!"
	done

CooltrainerfTessaBeatenText:
	text "You apparently"
	line "are!"
	done

CooltrainerfTessaAfterText:
	text "We'll win soon"
	line "enough, I know it!"
	done

Route31PsychicText:
	text "Darn!"

	para "I was just beaten"
	line "by a really strong"
	cont "trainer!"

	para "Swept me away!"

	para "I'll need to train"
	line "more if I want to"
	cont "stand a chance!"
	done

Route31FisherText:
	text "I'm not battling"
	line "today."

	para "Just here to fish."

	para "I don't think I'm"
	line "of the same level"
	cont "as everyone else"
	cont "here."
	done

Route31SignText:
	text "Route 31"

	para "North to Hu's"
	line "Cavern"

	para "West to Crescent"
	line "Lake"
	done

Route31HusCavernSignText:
	text "Hu's Cavern"

	para "Route 26 -"
	line "Zaconia City"
	done

Route31_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event 11, 70, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 11, 71, ROUTE_38_ECRUTEAK_GATE, 2
	warp_event 15, 27, ROUTE_26_HEAL_HOUSE, 1
	warp_event 10,  5, HUS_CAVERN, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  9, 69, BGEVENT_READ, Route31Sign
	bg_event  8, 10, BGEVENT_READ, Route31HusCavernSign

	db 8 ; object events
	object_event 14, -6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermJuan, -1
	object_event  4,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainermGaven3, -1
	object_event  9, -6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfMary, -1
	object_event  8, 31, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerfTessa, -1
	object_event 16, 50, SPRITE_PSYCHIC, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route31PsychicScript, -1
	object_event  8, 68, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route31FisherScript, -1
	object_event 14, 24, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route31FruitTree, -1
	object_event  9, -6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route31MaxElixer, EVENT_ROUTE_26_MAX_ELIXER
