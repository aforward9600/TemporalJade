	object_const_def ; object_event constants
	const MORAVILSCHOOLGYM_STEVE

MoravilSchoolGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GymLeaderSteve:
	checkevent EVENT_BEAT_PRYCE
	iftrue .GymLeaderSteveAfter
	pause 30
	showemote EMOTE_SHOCK, MORAVILSCHOOLGYM_STEVE, 15
	faceplayer
	opentext
	writetext MeetGymLeaderSteveText
	waitbutton
	closetext
	winlosstext GymLeaderSteveWinText, GymLeaderSteveLastMonText
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .GymLeaderSteveGrass
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .GymLeaderSteveWater
	loadtrainer STEVE, STEVE_ROWLET
	sjump .StartSteveBattle

.GymLeaderSteveGrass:
	loadtrainer STEVE, STEVE_MUDKIP
	sjump .StartSteveBattle

.GymLeaderSteveWater:
	loadtrainer STEVE, STEVE_TEPIG
.StartSteveBattle:
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_PRYCE
	opentext
	writetext GymLeaderSteveAfterText
	waitbutton
	closetext
	opentext
	writetext ReceivedLearnedBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_GLACIERBADGE
;	loadmem wLevelCap, 22
	setflag ENGINE_BEAT_PRYCE
.GymLeaderSteveAfter:
	checkflag ENGINE_BEAT_PRYCE
	iffalse .Rematch
	checkevent EVENT_GOT_TM10_HIDDEN_POWER
	iftrue .AlreadyDefeatedSteve
	setevent EVENT_BEAT_SCHOOLBOY_FINN
	setevent EVENT_BEAT_SCHOOLBOY_PIE
	setevent EVENT_BEAT_SCHOOLGIRL_BRIT
	setevent EVENT_BEAT_SCHOOLGIRL_JOLENE
	writetext LearnedBadgeText
	buttonsound
	verbosegiveitem TM_HIDDEN_POWER
	iffalse NoRoomForHiddenPower
	setevent EVENT_GOT_TM10_HIDDEN_POWER
	writetext SteveHiddenPowerText
	waitbutton
	closetext
	end

.Rematch:
	writetext SteveRematchText
	waitbutton
	closetext
	winlosstext GymLeaderSteveWinText, GymLeaderSteveLastMonText
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .GymLeaderSteveGrassRematch
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .GymLeaderSteveWaterRematch
	loadtrainer STEVE, STEVE_ROWLET
	sjump .StartSteveBattleRematch

.GymLeaderSteveGrassRematch:
	loadtrainer STEVE, STEVE_MUDKIP
	sjump .StartSteveBattleRematch

.GymLeaderSteveWaterRematch:
	loadtrainer STEVE, STEVE_TEPIG
	startbattle
.StartSteveBattleRematch:
	reloadmapafterbattle
	opentext
	writetext BeatenSteveAgainText
	waitbutton
	closetext
	setflag ENGINE_BEAT_PRYCE
	end

.AlreadyDefeatedSteve:
	writetext GymLeaderSteveResearchText
	waitbutton
NoRoomForHiddenPower:
	closetext
	end

GymLeaderSteveLastMonText:
	text "Steve: I may not"
	line "have studied"
	cont "enough!"
	done

MoravilGymBooks:
	jumpstd difficultbookshelf

MoravilGymStatue:
	checkflag ENGINE_GLACIERBADGE
	iftrue .Beaten
	gettrainername STRING_BUFFER_4, STEVE, STEVE_ROWLET
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, STEVE, STEVE_ROWLET
	jumpstd gymstatue2

GymLeaderSteveWinText:
	text "Steve: My research"
	line "has gone to waste!"
	done

MeetGymLeaderSteveText:
	text "Oh, I'm sorry!"

	para "I was so buried"
	line "in my screen that"
	cont "I didn't notice"
	cont "you there!"

	para "Welcome to the"
	line "Moravil School"
	cont "Gym!"

	para "I'm the Gym Leader,"
	line "Steve!"

	para "I, uh, apologize"
	line "for the small"
	cont "space."

	para "We didn't have the"
	line "funding to build a"
	cont "new facility, so"
	cont "we use the library"
	cont "for the challenge."

	para "But enough about"
	line "budgetary issues."

	para "You're here for"
	line "your first badge,"
	cont "correct?"

	para "You see, I've"
	line "researched you,"
	cont "<PLAYER>, and I"
	cont "know what your"
	cont "staring #mon"
	cont "is!"

	para "Don't believe me?"

	para "Then let's battle"
	line "and you can find"
	cont "out the truth!"
	done

GymLeaderSteveAfterText:
	text "Steve: Well done!"

	para "You're a natural,"
	line "no studying"
	cont "required!"

	para "I have no doubt"
	line "you'll go far!"

	para "To commemorate"
	line "this victory, I"
	cont "hereby award you"
	cont "with a #mon"
	cont "League badge!"
	done

ReceivedLearnedBadge:
	text "<PLAYER> received"
	line "the LearnedBadge!"

LearnedBadgeText:
	text "Steve: Congrats on"
	line "your first badge!"

	para "With this, you can"
	line "move on to Route"
	cont "26 and the rest of"
	cont "Onaga!"

	para "As a bonus, I want"
	line "you to have this"
	cont "TM!"
	done

SteveHiddenPowerText:
	text "Steve: That's"
	line "Hidden Power!"

	para "The type depends"
	line "on the #mon"
	cont "using it."

	para "Much like how my"
	line "team depended on"
	cont "what #mon you"
	cont "you started with!"

	para "Before you go,"
	line "make sure you talk"
	cont "with my colleague"
	cont "next door."

	para "She will have a"
	line "good item for you!"
	done

SteveRematchText:
	text "Steve: Back for"
	line "another lesson?"

	para "I hope I won't"
	line "disappoint!"
	done

GymLeaderSteveResearchText:
	text "Steve: Are you"
	line "wondering about"
	cont "how I knew what"
	cont "your starting"
	cont "#mon was?"

	para "Simple! I do"
	line "intensive research"
	cont "before I battle"
	cont "challengers!"

	para "And by intensive,"
	line "I mean I email"
	cont "Professor Juniper"
	cont "and ask her."

	para "What? How else am"
	line "I supposed to"
	cont "know?"
	done

BeatenSteveAgainText:
	text "Steve: Keep it up,"
	line "and you'll go far!"
	done

MoravilSchoolGym_MapEvents:
	db 0, 0

	db 2 ; warp events
	warp_event  2,  5, MORAVIL_SCHOOL_LIBRARY, 3
	warp_event  3,  5, MORAVIL_SCHOOL_LIBRARY, 3

	db 0 ; coord events

	db 4 ; bg events
	bg_event 0, 1, BGEVENT_READ, MoravilGymBooks
	bg_event 5, 1, BGEVENT_READ, MoravilGymBooks
	bg_event 1, 3, BGEVENT_READ, MoravilGymStatue
	bg_event 4, 3, BGEVENT_READ, MoravilGymStatue

	db 1 ; object events
	object_event  2,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GymLeaderSteve, -1
