	object_const_def ; object_event constants
	const ROUTE24_YOUNGSTER1
	const ROUTE24_YOUNGSTER2
	const ROUTE24_TEACHER1
	const ROUTE24_FRUIT_TREE
	const ROUTE24_BUG_CATCHER
	const ROUTE24_POKEBALL1
	const ROUTE24_POKEBALL2
	const ROUTE24_POKEBALL3

Route29_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Route24TeacherScript:
	jumptextfaceplayer Route24TeacherText

Route24YoungsterTimmy:
	trainer YOUNGSTER, TIMMY, EVENT_BEAT_YOUNGSTER_TIMMY, Route24YoungsterTimmySeenText, Route24YoungsterTimmyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24YoungsterTimmyAfterText
	waitbutton
	closetext
	end

Route24YoungsterGordy:
	trainer YOUNGSTER, GORDY, EVENT_BEAT_YOUNGSTER_GORDY, Route24YoungsterGordySeenText, Route24YoungsterGordyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24YoungsterGordyAfterText
	waitbutton
	closetext
;	winlosstext CooltrainermJroseBeatenText, 0
;	loadtrainer COOLTRAINERM, EMILE
;	startbattle
;	reloadmapafterbattle
	end

Route24BugCatcherColton:
	trainer BUG_CATCHER, COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, Route24BugCatcherColtonSeenText, Route24BugCatcherColtonBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext Route24BugCatcherColtonAfterText
	waitbutton
	closetext
	end

Route29Sign1:
	jumptext Route29Sign1Text

Route29Sign2:
	jumptext Route29Sign2Text

VictoryRoadGateSign:
	jumptext VictoryRoadGateSignText

Route24Potion:
	itemball POTION

Route24PinkBow:
	itemball PINK_BOW

TMSunnyDay:
	itemball TM_SUNNY_DAY

Route29FruitTree:
	fruittree FRUITTREE_ROUTE_29

Route24TeacherText:
	text "I'm not a trainer,"
	line "but there are a"
	cont "few up ahead."

	para "Don't go into the"
	line "gate to the south"
	cont "without eight"
	cont "badges."

	para "That leads to the"
	line "#mon League in"
	cont "Unova."
	done

CatchingTutorialIntroText:
	text "I've seen you a"
	line "couple times. How"

	para "many #MON have"
	line "you caught?"

	para "Would you like me"
	line "to show you how to"
	cont "catch #MON?"
	done

CatchingTutorialDebriefText:
	text "That's how you do"
	line "it."

	para "If you weaken them"
	line "first, #MON are"
	cont "easier to catch."
	done

CatchingTutorialDeclinedText:
	text "Oh. Fine, then."

	para "Anyway, if you"
	line "want to catch"

	para "#MON, you have"
	line "to walk a lot."
	done

CatchingTutorialRepeatText:
	text "Huh? You want me"
	line "to show you how to"
	cont "catch #MON?"
	done

Route29YoungsterText:
	text "I hope those rocks"
	line "on Route 46 get"
	cont "cleared soon."

	para "I wanna get to"
	line "Blackthorn City"
	cont "at some point."
	done

Route29YoungsterText_RocksCleared:
	text "Now that the rocks"
	line "are cleared, I can"
	cont "get to Blackthorn."

	para "Eventually."
	done

Route29TeacherText:
	text "See those ledges?"
	line "It's scary to jump"
	cont "off them."

	para "But you can go to"
	line "NEW BARK without"

	para "walking through"
	line "the grass."
	done

Route24BugCatcherColtonSeenText:
	text "There are two cool"
	line "Bug-type #mon"
	cont "around here!"
	done

Route24BugCatcherColtonBeatenText:
	text "I need one more!"
	done

Route24BugCatcherColtonAfterText:
	text "I only have a"
	line "Cutiefly."

	para "There are also"
	line "Venipede here, but"
	cont "they're rarer."
	done

MeetTuscanyText:
	text "Hi there!"

	para "I'm the Week Lady!"
	done

TuscanyGivesGiftText:
	text "Here, take this"
	line "Polkadot Bow!"
	done

TuscanyGaveGiftText:
	text "Wouldn't you agree"
	line "that it is the"
	cont "most adorable?"

	para "It strengthens"
	line "Fairy-type moves."

	para "I am certain it"
	line "will be of use."
	done

TuscanyTuesdayText:
	text "Normal-types will"
	line "love that Pink"
	cont "Bow!"

	para "Try it out!"
	done

TuscanyNotTuesdayText:
	text "Today is not"
	line "Tuesday. That"
	cont "is unfortunate…"
	done

Route24YoungsterTimmySeenText:
	text "It's time for my"
	line "first battle!"
	done

Route24YoungsterTimmyBeatenText:
	text "And my first"
	line "loss!"
	done

Route24YoungsterTimmyAfterText:
	text "Oh well. You win"
	line "some, you lose"
	cont "some."
	done

Route24YoungsterGordySeenText:
	text "I sometimes forget"
	line "type advantages."

	para "I used Earthquake"
	line "against a"
	cont "Dragonite once."

	para "Whoops!"
	done

Route24YoungsterGordyBeatenText:
	text "Oh snap!"
	done

Route24YoungsterGordyAfterText:
	text "I like to sing"
	line "songs to a melody"
	cont "that sounds like"
	cont "you'd hear it in"
	cont "a #mon Center."
	done

Route29Sign1Text:
	text "Route 24"

	para "Antiquo Town -"
	line "Murkrow Valley"
	done

Route29Sign2Text:
	text "Route 24"

	para "Antiquo Town -"
	line "Murkrow Valley"
	done

VictoryRoadGateSignText:
	text "Gate to Victory"
	line "Road"
	done

RaikouCry:
	text "Raikou: Bzzrtzrt!"
	done

Route29_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 31, 13, VICTORY_ROAD_GATE, 1
	warp_event 32, 13, VICTORY_ROAD_GATE, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event 51,  7, BGEVENT_READ, Route29Sign1
	bg_event  3,  5, BGEVENT_READ, Route29Sign2
	bg_event 30, 10, BGEVENT_READ, VictoryRoadGateSign

	db 8 ; object events
	object_event 41, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, Route24YoungsterTimmy, -1
	object_event  4, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, Route24YoungsterGordy, -1
	object_event 45, 10, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route24TeacherScript, -1
	object_event  6,  4, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route29FruitTree, -1
	object_event 21, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 3, Route24BugCatcherColton, -1
	object_event 16,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, TMSunnyDay, EVENT_GOT_TM_11_SUNNY_DAY
	object_event 37, 10, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route24Potion, EVENT_ROUTE_24_POTION
	object_event 33,  2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route24PinkBow, EVENT_ROUTE_24_PINK_BOW
