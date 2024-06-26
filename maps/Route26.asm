	object_const_def ; object_event constants
	const ROUTE26_FISHER
	const ROUTE26_YOUNGSTER
	const ROUTE26_TEACHER
	const ROUTE26_COOLTRAINER_M
	const ROUTE26_FRUIT_TREE
	const ROUTE26_POKE_BALL1
	const ROUTE26_POKE_BALL2
	const ROUTE26_COOLTRAINER_F

Route26_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerTeacherKawakami:
	trainer TEACHER, KAWAKAMI, EVENT_BEAT_TEACHER_KAWAKAMI, TeacherKawakamiSeenText, TeacherKawakamiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TeacherKawakamiAfterText
	waitbutton
	closetext
	end

Route26MailRecipientScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM56_DREAM_EATER
	iftrue .DescribeNightmare
	writetext Text_Route26SleepyMan
	buttonsound
	verbosegiveitem TM_DREAM_EATER
	iffalse .NoRoomForItems
	setevent EVENT_GOT_TM56_DREAM_EATER
	closetext
	end

.DescribeNightmare:
	writetext Text_Route26DescribeNightmare
	waitbutton
.NoRoomForItems:
	closetext
	end

TrainerCooltrainerFJessie:
	trainer COOLTRAINERF, JESSIE, EVENT_BEAT_COOLTRAINERF_JESSIE, CooltrainerFJessieSeenText, CooltrainerFJessieBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFJessieRematchText
	yesorno
	iffalse .Refused
	playmusic MUSIC_BEAUTY_ENCOUNTER
	writetext CooltrainerFJessieLetsDoItText
	waitbutton
	winlosstext CooltrainerFJessieBeatenText, 0
	loadtrainer COOLTRAINERF, JESSIE
	startbattle
	reloadmapafterbattle
	closetext
	end

.Refused:
	writetext CooltrainerFJessieRefusedText
	waitbutton
	closetext
	end

Route26YoungsterScript:
	jumptextfaceplayer Route26YoungsterText

Route26Sign:
	jumptext Route26SignText

DarkCaveSign:
	jumptext DarkCaveSignText

Route26CooltrainerMScript:
	jumptextfaceplayer Route26CooltrainerMText

Route26FruitTree:
	fruittree FRUITTREE_ROUTE_26

Route26Potion:
	itemball FULL_RESTORE

Route26PokeBall:
	itemball ULTRA_BALL

Route26CooltrainerMText:
	text "Sorry, but Dark"
	line "Cave is off-"
	cont "limits right now."

	para "The cave-in"
	line "should be cleared"
	cont "up soon."
	done

TeacherKawakamiSeenText:
	text "You should always"
	line "be open to"
	cont "learning!"
	done

TeacherKawakamiBeatenText:
	text "Looks like I need"
	line "to be more open to"
	cont "learning as well!"
	done

TeacherKawakamiAfterText:
	text "See, I learned"
	line "something new."

	para "Be sure to keep"
	line "learning!"
	done

Text_Route26SleepyMan:
	text "… Hnuurg… Huh?"

	para "I walked too far"
	line "today looking for"
	cont "#mon."

	para "My feet hurt and"
	line "I'm sleepy…"

	para "I took a nap, but"
	line "then I started to"
	cont "feel like…"

	para "Something was"
	line "eating my dreams…"

	para "…Huh?"

	para "Wh-where did this"
	line "TM come from?"

	para "H-here, you take"
	line "it!"
	done

Text_Route26DescribeNightmare:
	text "Ugh…I don't feel"
	line "so good now…"

	para "Something must"
	line "have been eating"
	cont "my dreams…"

	para "When Dream Eater"
	line "is used on a"

	para "sleeping #mon,"
	line "it heals the user."

	para "Scary, huh?"
	done

Route26YoungsterText:
	text "Have you met Mr."
	line "#mon?"

	para "He lives just"
	line "South of here."

	para "He's a little odd,"
	line "so I don't visit."
	done

CooltrainerFJessieSeenText:
	text "Not too many"
	line "trainers make it"
	cont "this far."
	done

CooltrainerFJessieBeatenText:
	text "I can see why!"
	done

CooltrainerFJessieRematchText:
	text "Want a rematch?"
	done

CooltrainerFJessieLetsDoItText:
	text "Let's get to it!"
	done

CooltrainerFJessieRefusedText:
	text "7 badges is no"
	line "joke. No wonder"
	cont "you're so strong!"
	done

Route26SignText:
	text "Route 26"

	para "Violet City -"
	line "Cherrygrove City"

	para "Cooltrainer Jessie"
	line "is waiting for"
	cont "battle!"
	done

DarkCaveSignText:
	text "Dark Cave"
	done

Route26_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4
	warp_event 34,  5, DARK_CAVE_VIOLET_ENTRANCE, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event  7,  5, BGEVENT_READ, Route26Sign
	bg_event 26,  5, BGEVENT_READ, DarkCaveSign

	db 8 ; object events
	object_event 17,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26MailRecipientScript, -1
	object_event  9,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26YoungsterScript, -1
	object_event 19, 13, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerTeacherKawakami, -1
	object_event 34,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26CooltrainerMScript, EVENT_DARK_CAVE_GUARD
	object_event 16,  7, SPRITE_FRUIT_TREE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route26FruitTree, -1
	object_event 29,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route26Potion, EVENT_ROUTE_31_POTION
	object_event 13, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route26PokeBall, EVENT_ROUTE_31_POKE_BALL
	object_event 30,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFJessie, -1
