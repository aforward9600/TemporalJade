	object_const_def ; object_event constants
	const ROUTE30_LASS
	const ROUTE30_LASS2
	const ROUTE30_BUG_CATCHER
	const ROUTE30_YOUNGSTER
	const ROUTE30_FRUIT_TREE1
	const ROUTE30_FRUIT_TREE2
	const ROUTE30_GRAMPS
	const ROUTE30_POKE_BALL

Route30_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerLassJackie:
	trainer LASS, JACKIE, EVENT_BEAT_LASS_JACKIE, LassJackieSeenText, LassJackieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassJackieAfterBattleText
	waitbutton
	closetext
	end

TrainerLassArielle:
	trainer LASS, ARIELLE, EVENT_BEAT_LASS_ARIELLE, LassArielleSeenText, LassArielleBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassArielleAfterBattleText
	waitbutton
	closetext
	end

TrainerBugCatcherAnton:
	trainer BUG_CATCHER, ANTON, EVENT_BEAT_BUG_CATCHER_ANTON, BugCatcherAntonSeenText, BugCatcherAntonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BugCatcherAntonAfterText
	waitbutton
	closetext
	end

Route30GrampsScript:
	jumptextfaceplayer Route30GrampsText

Route30LassScript:
	jumptextfaceplayer Route30LassText

Route30Sign:
	jumptext Route30SignText

MrPokemonsHouseDirectionsSign:
	jumptext MrPokemonsHouseDirectionsSignText

MrPokemonsHouseSign:
	setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
	jumptext MrPokemonsHouseSignText

Route30MaxRevive:
	itemball POISON_BARB

Route30FruitTree1:
	fruittree FRUITTREE_ROUTE_30_1

Route30FruitTree2:
	fruittree FRUITTREE_ROUTE_30_2

Route30HiddenPotion:
	hiddenitem RARE_CANDY, EVENT_ROUTE_30_HIDDEN_RARE_CANDY

YoungsterCottonSeenText:
	text "My grandpa says he"
	line "did something to"
	cont "fiddy men in the"
	cont "war."

	para "I don't know what"
	line "he means."
	done

YoungsterCottonBeatenText:
	text "Bwaaaah!"
	done

YoungsterCottonAfterText:
	text "My dad says he"
	line "didn't fight in"

	para "the war, so I"
	line "don't know who to"
	cont "believe."
	done

CooltrainerMJacquesSeenText:
	text "There's no Gym in"
	line "Cherrygrove,"

	para "so there's no"
	line "point going there."
	done

CooltrainerMJacquesBeatenText:
	text "Nice one!"
	done

CooltrainerMJacquesRematchText:
	text "Cherrygrove doesn't"
	line "really have"
	cont "anything,"

	para "so do you want to"
	line "battle again?"
	done

CooltrainerMJacquesLetsDoItText:
	text "Sounds good to me!"
	done

CooltrainerMJacquesRefusedText:
	text "Well, if you won't"
	line "battle me, I heard"
	cont "a really strong"

	para "trainer is staying"
	line "in Cherrygrove."

	para "Maybe I should ask"
	line "for a battle."
	done

BugCatcherAntonSeenText:
	text "There aren't any"
	line "Bug types around"
	cont "here, but the"
	cont "view of the river"
	cont "is so pretty,"

	para "I don't really"
	line "mind."
	done

BugCatcherAntonBeatenText:
	text "Losing isn't a"
	line "pretty sight!"
	done

BugCatcherAntonAfterText:
	text "Falling into the"
	line "Black River isn't"

	para "a pretty sight"
	line "either."
	done

Route30GrampsText:
	text "I remember when"
	line "the Black River"
	cont "was so polluted,"

	para "it caught on fire!"

	para "That was a serious"
	line "wake-up call for"
	cont "us."
	done

Route30LassText:
	text "Did you know there"
	line "are Sandygast"
	cont "living in the sand"
	cont "box at the school?"

	para "I found out when"
	line "one popped up and"
	cont "scared the life"
	cont "outta me!"
	done

Route30SignText:
	text "Route 25"

	para "Antiquo Town -"
	line "Moravil School"
	done

MrPokemonsHouseDirectionsSignText:
	text "Black River Pass"
	line "and Black River"
	cont "Bridge"
	done

MrPokemonsHouseSignText:
	text "Moravil School"
	line "ahead"
	done

LassJackieSeenText:
	text "I'm playing hooky"
	line "today."
	done

LassJackieBeatenText:
	text "I should have"
	line "been in school!"
	done

LassJackieAfterBattleText:
	text "Hopefully the"
	line "truant officer"
	cont "doesn't catch me."
	done

LassArielleSeenText:
	text "That cave over"
	line "there apparently"
	cont "goes up north"
	cont "to Oenid Village."
	done

LassArielleBeatenText:
	text "It goes right"
	line "through the"
	cont "mountain!"
	done

LassArielleAfterBattleText:
	text "Or so I've been"
	line "told."
	done

Route30_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 34,  7, BLACK_RIVER_PASSAGE_ROUTE_25, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event 45, 15, BGEVENT_READ, Route30Sign
	bg_event 32,  8, BGEVENT_READ, MrPokemonsHouseDirectionsSign
	bg_event 16,  8, BGEVENT_READ, MrPokemonsHouseSign
	bg_event 35, 14, BGEVENT_ITEM, Route30HiddenPotion

	db 8 ; object events
	object_event  6, 12, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerLassJackie, -1
	object_event 42, 11, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerLassArielle, -1
	object_event 24,  9, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, TrainerBugCatcherAnton, -1
	object_event 34, 11, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route30LassScript, -1
	object_event 49, 11, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30FruitTree1, -1
	object_event 12,  6, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30FruitTree2, -1
	object_event 18, 14, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route30GrampsScript, -1
	object_event 15,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route30MaxRevive, EVENT_ROUTE_30_ANTIDOTE
