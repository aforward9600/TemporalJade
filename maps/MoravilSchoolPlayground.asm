	object_const_def ; object_event constants
	const MORAVILSCHOOLPLAYGROUND_RIVAL
	const MORAVILSCHOOLPLAYGROUND_SCHOOLBOY
	const MORAVILSCHOOLPLAYGROUND_LASS
	const MORAVILSCHOOLPLAYGROUND_KID
	const MORAVILSCHOOLPLAYGROUND_TWIN

MoravilSchoolPlayground_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoravilSchoolPlaygroundSchoolboyScript:
	faceplayer
	opentext
	checkevent EVENT_SCHOOL_RIVAL
	iftrue .RivalGone
	writetext MoravilSchoolPlaygroundSchoolboyText1
	waitbutton
	closetext
	end

.RivalGone:
	writetext MoravilSchoolPlaygroundSchoolboyText2
	waitbutton
	closetext
	end

MoravilSchoolPlaygroundKidScript:
	jumptext MoravilSchoolPlaygroundKidText

MoravilSchoolPlaygroundTwinScript:
	jumptext MoravilSchoolPlaygroundTwinText

MoravilSchoolPlaygroundLassScript:
	jumptextfaceplayer MoravilSchoolPlaygroundLassText

MoravilSchoolRival:
	opentext
	writetext MoravilSchoolRivalWhosNextText
	waitbutton
	closetext
	pause 10
	showemote EMOTE_SHOCK, MORAVILSCHOOLPLAYGROUND_RIVAL, 15
	playmusic MUSIC_LOOK_ZINNIA
	faceplayer
	opentext
	writetext MoravilSchoolRivalBattleText
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .FemaleMoravilRival
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .MoravilRivalRowlet
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .MoravilRivalMudkip
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL3, RIVAL3_B_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.MoravilRivalMudkip:
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL3, RIVAL3_B_MUDKIP
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.MoravilRivalRowlet:
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL3, RIVAL3_B_ROWLET
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.FemaleMoravilRival:
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .FemaleMoravilRivalRowlet
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .FemaleMoravilRivalMudkip
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL4, RIVAL4_B_TEPIG
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.FemaleMoravilRivalRowlet:
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL4, RIVAL4_B_ROWLET
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.FemaleMoravilRivalMudkip:
	winlosstext MoravilRivalBeatenText, MoravilRivalLastMonText
	setlasttalked MORAVILSCHOOLPLAYGROUND_RIVAL
	loadtrainer RIVAL4, RIVAL4_B_MUDKIP
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjump .AfterVictorious

.AfterVictorious:
	playmusic MUSIC_LOOK_ZINNIA
	opentext
	writetext MoravilRivalLeavesText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal DOWN, .RivalLeavesToSide
	applymovement MORAVILSCHOOLPLAYGROUND_RIVAL, RivalLeavesSchoolMovement
	disappear MORAVILSCHOOLPLAYGROUND_RIVAL
	playsound SFX_EXIT_BUILDING
	special FadeOutMusic
	pause 10
	special RestartMapMusic
	waitsfx
	playmapmusic
	end

.RivalLeavesToSide:
	applymovement MORAVILSCHOOLPLAYGROUND_RIVAL, RivalLeavesSchoolToSideMovement
	disappear MORAVILSCHOOLPLAYGROUND_RIVAL
	playsound SFX_EXIT_BUILDING
	special FadeOutMusic
	pause 10
	special RestartMapMusic
	waitsfx
	playmapmusic
	end

MoravilRivalLastMonText:
	text "<RIVAL>: We're"
	line "struggling a bit"
	cont "here."
	done

MoravilRivalBeatenText:
	text "<RIVAL>: You've"
	line "learned a lot!"
	done

RivalLeavesSchoolMovement:
	step UP
	step UP
	step UP
	step UP
	step_end

RivalLeavesSchoolToSideMovement:
	step LEFT
	step UP
	step UP
	step UP
	step UP
	step_end

MoravilSchoolPlaygroundKidText:
	text "Aw man! I always"
	line "lose this game!"
	done

MoravilSchoolPlaygroundLassText:
	text "I just like to"
	line "skip rope all"
	cont "by myself during"
	cont "recess."
	done

MoravilSchoolPlaygroundSchoolboyText1:
	text "Dang it!"

	para "I lost!"
	done

MoravilSchoolPlaygroundSchoolboyText2:
	text "Maybe I can win"
	line "now."

	para "…Oh, who am I"
	line "kidding?"
	done

MoravilSchoolPlaygroundTwinText:
	text "I'll be the"
	line "mommy, and you'll"
	cont "be the daddy!"
	done

MoravilSchoolRivalWhosNextText:
	text "<RIVAL>: Alright!"
	line "Who's up next?"
	done

MoravilSchoolRivalBattleText:
	text "Hey <PLAYER>!"

	para "I just showed this"
	line "kid how good I am!"

	para "You shouldn't mess"
	line "with someone who"
	cont "has more badges"
	cont "than you!"

	para "After all, I got"
	line "my LearnedBadge"
	cont "already!"

	para "Wanna see?"
	done

MoravilRivalLeavesText:
	text "<RIVAL>: You don't"
	line "even have your"
	cont "badge yet, and you"
	cont "are already a"
	cont "strong battler!"

	para "Looks like I need"
	line "to improve myself!"

	para "Perhaps I'll head"
	line "to the next town"
	cont "through the cave"
	cont "up north."

	para "You can't get to"
	line "it without a"
	cont "badge."

	para "You better get to"
	line "the library and"
	cont "hit the books!"

	para "See ya!"
	done

MoravilSchoolPlayground_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9,  5, MORAVIL_SCHOOL_HALLWAY, 7
	warp_event 10,  5, MORAVIL_SCHOOL_HALLWAY, 8

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event 10,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolRival, EVENT_SCHOOL_RIVAL
	object_event 13,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundSchoolboyScript, -1
	object_event 16,  9, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundLassScript, -1
	object_event  3, 10, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundKidScript, -1
	object_event  4, 10, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolPlaygroundTwinScript, -1
