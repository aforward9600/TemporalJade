	object_const_def ; object_event constants
	const MURKROWVALLEY_GRAMPS
	const MURKROWVALLEY_LASS
	const MURKROWVALLEY_MURKROW1
	const MURKROWVALLEY_MURKROW2
	const MURKROWVALLEY_MURKROW3
	const MURKROWVALLEY_MILTANK1
	const MURKROWVALLEY_MURKROW4
	const MURKROWVALLEY_MILTANK2
	const MURKROWVALLEY_MURKROW5
	const MURKROWVALLEY_TEACHER
	const MURKROWVALLEY_TWIN
	const MURKROWVALLEY_RIVAL ; if player is male

MurkrowValley_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.DummyScene0:
	end

.DummyScene1:
	end

.FlyPoint:
	setflag ENGINE_FLYPOINT_MURKROW_VALLEY
	return

MurkrowValley_TeacherStopsYou1:
	playmusic MUSIC_MOM
	turnobject MURKROWVALLEY_TEACHER, UP
	showemote EMOTE_SHOCK, MURKROWVALLEY_TEACHER, 15
	opentext
	writetext MurkrowValleyWaitText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement MURKROWVALLEY_TEACHER, MurkrowValleyTeacherMovement1
	opentext
	writetext MurkrowValleyWhatAreYouDoingText
	waitbutton
	closetext
	follow MURKROWVALLEY_TEACHER, PLAYER
	applymovement MURKROWVALLEY_TEACHER, MurkrowValleyFollowMovement1
	stopfollow
	opentext
	writetext MurkrowValleyDangerousText
	waitbutton
	closetext
	special RestartMapMusic
	end

MurkrowValley_TeacherStopsYou2:
	playmusic MUSIC_MOM
	turnobject MURKROWVALLEY_TEACHER, UP
	showemote EMOTE_SHOCK, MURKROWVALLEY_TEACHER, 15
	opentext
	writetext MurkrowValleyWaitText
	waitbutton
	closetext
	turnobject PLAYER, RIGHT
	applymovement MURKROWVALLEY_TEACHER, MurkrowValleyTeacherMovement2
	opentext
	writetext MurkrowValleyWhatAreYouDoingText
	waitbutton
	closetext
	follow MURKROWVALLEY_TEACHER, PLAYER
	applymovement MURKROWVALLEY_TEACHER, MurkrowValleyFollowMovement2
	stopfollow
	turnobject PLAYER, DOWN
	opentext
	writetext MurkrowValleyDangerousText
	waitbutton
	closetext
	special RestartMapMusic
	end

MurkrowValleyTwinScript:
	faceplayer
	opentext
	writetext MurkrowValleyTwinText
	waitbutton
	closetext
	turnobject MURKROWVALLEY_TWIN, DOWN
	end

MurkrowValleyTeacherScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue .GotPokemon
	jumptextfaceplayer MurkrowValleyTeacherText1

.GotPokemon
	jumptextfaceplayer MurkrowValleyTeacherText2

MurkrowValleyGrampsScript:
	jumptextfaceplayer MurkrowValleyGrampsText

MurkrowValleyLassScript:
	jumptextfaceplayer MurkrowValleyLassText

MurkrowValleySign:
	jumptext MurkrowValleySignText

MurkrowValleyPlayersHouseSign:
	jumptext MurkrowValleyPlayersHouseSignText

MurkrowValleyJunipersLabSign:
	jumptext MurkrowValleyJunipersLabSignText

MurkrowValleyRivalHouseSign:
	jumptext MurkrowValleyRivalHouseSignText

NBPlayerStepsBack:
	turn_head UP
	fix_facing
	step DOWN
	remove_fixed_facing
	step_end

NBRivalStepsDown:
	step DOWN
	step_end

MurkrowValleyTeacherMovement1:
	step UP
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

MurkrowValleyTeacherMovement2:
	step UP
	step LEFT
	step LEFT
	step LEFT
	step_end

MurkrowValleyFollowMovement1:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	step DOWN
	turn_head UP
	step_end

MurkrowValleyFollowMovement2:
	step RIGHT
	step RIGHT
	step RIGHT
	step DOWN
	turn_head UP
	step_end

MurkrowValleyGrampsText:
	text "We've gotten more"
	line "technological ever"
	cont "since Prof.Juniper"
	cont "built her lab."

	para "I kinda miss the"
	line "old days of"
	cont "peace and quiet,"
	cont "honestly…"
	done

MurkrowValleyLassText:
	text "It's really boring"
	line "in this town."

	para "I wanna go and"
	line "live in the big"
	cont "city where the"
	cont "excitement is!"
	done

Text_MeetMeAfterGym:
	text "……………………"

	para "<PLAYER>……"

	para "After you earn"
	line "your last badge…"

	para "Come to my room…"

	para "There's something"
	line "I want to say…"
	done

MurkrowValleySignText:
	text "Murkrow Valley"

	para "The land where"
	line "the Murkrow's"
	cont "caw never fades."
	done

MurkrowValleyPlayersHouseSignText:
	text "<PLAYER>'s House"
	done

MurkrowValleyJunipersLabSignText:
	text "Juniper #mon"
	line "Laboratory"
	
	para "Onaga Branch"
	done

MurkrowValleyRivalHouseSignText:
	text "<RIVAL>'s House"
	done

MurkrowValleyTeacherText1:
	text "The Murkrow here"
	line "might be friendly,"
	cont "but the #mon"
	cont "out in the grass"
	cont "are dangerous!"

	para "Don't leave without"
	line "a #mon!"
	done

MurkrowValleyTeacherText2:
	text "Your #mon is"
	line "so cute!"

	para "And it's strong!"

	para "You'll have no"
	line "trouble on your"
	cont "journey!"
	done

MurkrowValleyDangerousText:
	text "It's dangerous to"
	line "go out there with-"
	cont "out a #mon!"

	para "Go see Prof."
	line "Juniper and see if"
	cont "she'll give you"
	cont "one!"
	done

MurkrowValleyWaitText:
	text "Hold on, <PLAYER>!"
	done

MurkrowValleyWhatAreYouDoingText:
	text "It's not a good"
	line "idea to go out"
	cont "into the grass!"
	done

MurkrowValleyTwinText:
	text "I love Miltank!"

	para "They're so cute!"

	para "They smell really"
	line "bad, though!"
	done

MurkrowValley_MapEvents:
	db 0, 0 ; filler

	db 5 ; warp events
	warp_event  6,  7, ELMS_LAB, 1
	warp_event 23, 15, PLAYERS_NEIGHBORS_HOUSE, 1
	warp_event  9, 17, ELMS_HOUSE, 1
	warp_event 17,  7, PLAYERS_HOUSE_1F, 1
	warp_event 33,  5, RIVALS_HOUSE_1F, 1

	db 2 ; coord events
	coord_event 1, 10, SCENE_DEFAULT, MurkrowValley_TeacherStopsYou1
	coord_event 1, 11, SCENE_DEFAULT, MurkrowValley_TeacherStopsYou2

	db 4 ; bg events
	bg_event  5, 15, BGEVENT_READ, MurkrowValleySign
	bg_event 15,  7, BGEVENT_READ, MurkrowValleyPlayersHouseSign
	bg_event  3,  7, BGEVENT_READ, MurkrowValleyJunipersLabSign
	bg_event 31,  5, BGEVENT_READ, MurkrowValleyRivalHouseSign

	db 11 ; object events
;	object_event 16,  5, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_NEW_BARK_TOWN
	object_event 11,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MurkrowValleyGrampsScript, -1
	object_event 23,  8, SPRITE_LASS, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MurkrowValleyLassScript, -1
	object_event 23, 13, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  8,  5, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 21,  2, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 28, 14, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 33,  3, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 31, 15, SPRITE_MILTANK, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 16, 14, SPRITE_MURKROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  5, 12, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MurkrowValleyTeacherScript, -1
	object_event 29, 11, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, MurkrowValleyTwinScript, -1
