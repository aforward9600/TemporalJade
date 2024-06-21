	object_const_def ; object_event constants
	const MORAVILSCHOOLLIBRARY_RECEPTIONIST
	const MORAVILSCHOOLLIBRARY_SCHOOLBOY1
	const MORAVILSCHOOLLIBRARY_SCHOOLBOY2
	const MORAVILSCHOOLLIBRARY_SCHOOLGIRL1
	const MORAVILSCHOOLLIBRARY_SCHOOLGIRL2
	const MORAVILSCHOOLLIBRARY_GYM_GUY
	const MORAVILSCHOOLLIBRARY_YOUNGSTER
	const MORAVILSCHOOLLIBRARY_LASS
	const MORAVILSCHOOLLIBRARY_TEACHER

MoravilSchoolLibrary_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, .LockGymDoor

.LockGymDoor:
	checkevent EVENT_OPENED_SCHOOL_GYM
	iftrue .DontLockDoor
	changeblock 4, 0, $45
.DontLockDoor:
	return

TrainerLibrarySchoolboyFinn:
	trainer SCHOOLBOY, FINN, EVENT_BEAT_SCHOOLBOY_FINN, SchoolboyLibraryFinnSeenText, SchoolboyLibraryFinnBeatenText, 0, .AfterScript

.AfterScript:
	opentext
	writetext SchoolboyLibraryFinnAfterText
	waitbutton
	closetext
	end

TrainerLibrarySchoolboyPierce:
	trainer SCHOOLBOY, PIERCE, EVENT_BEAT_SCHOOLBOY_PIE, SchoolboyLibraryPierceSeenText, SchoolboyLibraryPierceBeatenText, 0, .AfterScript

.AfterScript:
	opentext
	writetext SchoolboyLibraryPierceAfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlBrit:
	trainer SCHOOLGIRL, BRIT, EVENT_BEAT_SCHOOLGIRL_BRIT, SchoolgirlBritSeenText, SchoolgirlBritBeatenText, 0, .AfterScript

.AfterScript:
	opentext
	writetext SchoolgirlBritAfterText
	waitbutton
	closetext
	end

TrainerSchoolgirlJolene:
	trainer SCHOOLGIRL, JOLENE, EVENT_BEAT_SCHOOLGIRL_JOLENE, SchoolgirlJoleneSeenText, SchoolgirlJoleneBeatenText, 0, .AfterScript

.AfterScript:
	opentext
	writetext SchoolgirlJoleneAfterText
	waitbutton
	closetext
	end

MoravilSchoolLibraryReceptionistScript:
	jumptextfaceplayer MoravilSchoolLibraryReceptionistText

MoravilSchoolLibrarySign:
	jumptext MoravilSchoolLibrarySignText

MoravilSchoolLibraryBooks:
	jumpstd difficultbookshelf

MoravilGymDoor:
	opentext
	checkevent EVENT_OPENED_SCHOOL_GYM
	iftrue .GymDoorIsAlreadyUnlocked
	writetext WhatsThePasswordText
	buttonsound
	special AskForPasswordInMap
	writetext IsThisTheCorrectPasswordText
	yesorno
	iffalse .DontGivePassword
	scall CheckForGymPassword
	checkevent EVENT_GOT_PASSWORD_FOR_SCHOOL_GYM
	iftrue .GotPasswordRight
	scall ReturnToMapMoravilLibrary
	scall CheckForDirtyPassword
	checkevent EVENT_GAVE_A_DIRTY_PASSWORD
	iftrue .GaveDirtyPassword
	writetext WrongPasswordText
	waitbutton
	closetext
	end

.GaveDirtyPassword:
	writetext WatchYourLanguageText
	waitbutton
	closetext
	clearevent EVENT_GAVE_A_DIRTY_PASSWORD
	end

.GotPasswordRight:
	scall ReturnToMapMoravilLibrary
	pause 10
	changeblock 4, 0, $3f
	reloadmappart
	playsound SFX_PECK
	waitsfx
	pause 5
	setevent EVENT_OPENED_SCHOOL_GYM
.GymDoorIsAlreadyUnlocked:
	writetext TheGymDoorIsUnlockedText
	waitbutton
	closetext
	end

.DontGivePassword:
	scall ReturnToMapMoravilLibrary
	writetext TryPasswordAgainLaterText
	waitbutton
	closetext
	end

ReturnToMapMoravilLibrary:
	callasm .ReturnToMoravilLibrary
	end

.ReturnToMoravilLibrary:
	call ReturnToMapWithSpeechTextbox
	ret

CheckForGymPassword:
	callasm .gotpassword
	iftrue .gotpassword2
	end

.gotpassword:
	xor a
	ld [wScriptVar], a
	ld de, MoravilGymDoorPassword
	ld hl, wRedsName
	ld c, 4
	call CompareBytes
	ret nz
	ld a, 1
	ld [wScriptVar], a
	ret

.gotpassword2:
	setevent EVENT_GOT_PASSWORD_FOR_SCHOOL_GYM
	end

MoravilGymDoorPassword:
	db "TOME"

CheckForDirtyPassword:
	callasm .gotpassword3
	iftrue .gotpassword4
	end

.gotpassword3:
	xor a
	ld [wScriptVar], a
	ld de, MoravilGymDirtyPassword
	ld hl, wRedsName
	ld c, 4
	call CompareBytes
	ret nz
	ld a, 1
	ld [wScriptVar], a
	ret

.gotpassword4:
	setevent EVENT_GAVE_A_DIRTY_PASSWORD
	end

MoravilGymDirtyPassword:
	db "FUCK"

;EVENT_GOT_PASSWORD_FOR_SCHOOL_GYM

MoravilLibraryTeacherScript:
	jumptextfaceplayer MoravilLibraryTeacherText

MoravilLibraryLassScript:
	jumptextfaceplayer MoravilLibraryLassText

MoravilLibraryYoungsterScript:
	jumptextfaceplayer MoravilLibraryYoungsterText

MoravilGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_PRYCE
	iftrue .MoravilGymGuy2
	writetext MoravilGymGuyText1
	waitbutton
	closetext
	end

.MoravilGymGuy2:
	writetext MoravilGymGuyText2
	waitbutton
	closetext
	end

GotQuestionsBook:
	jumptext GotQuestionsText

TepigBook:
	jumptext TepigBookText

UrsaringBook:
	jumptext UrsaringBookText

KnightsTemporaBook:
	jumptext KnightsTemporaBookText

ThePlacesBook:
	jumptext ThePlacesBookText

CanYouBelieveBook:
	jumptext CanYouBelieveText

MourningBook:
	jumptext MourningBookText

ElementaryBook:
	jumptext ElementaryBookText

AncientFossilsBook:
	jumptext AncientFossilsBookText

SwinubBook:
	jumptext SwinubBookText

MoravilSchoolLibraryReceptionistText:
	text "Welcome to the"
	line "library."

	para "If you're looking"
	line "for the Gym, it's"
	cont "in the back."

	para "Do try to keep"
	line "quiet while"
	cont "battling, please."
	done

MoravilSchoolLibrarySignText:
	text "Moravil School"
	line "Gym"

	para "Defeat the four"
	line "trainers to get"
	cont "their clues."

	para "Find the matching"
	line "books to enter."
	done

WhatsThePasswordText:
	text "You have to input"
	line "the correct code"
	cont "to enter."
	done

WrongPasswordText:
	text "That must be the"
	line "wrong code."
	done

TryPasswordAgainLaterText:
	text "Come back after"
	line "you get the code."
	done

TheGymDoorIsUnlockedText:
	text "The door is"
	line "unlocked."
	done

IsThisTheCorrectPasswordText:
	text "Is this the right"
	line "code?"
	done

SchoolboyLibraryFinnSeenText:
	text "Wanna hint?"
	done

SchoolboyLibraryFinnBeatenText:
	text "I should have"
	line "taken the hint!"
	done

SchoolboyLibraryFinnAfterText:
	text "This book causes"
	line "HEATED debates."
	done

SchoolboyLibraryPierceSeenText:
	text "I'm reading an"
	line "advanced chemistry"
	cont "book!"
	done

SchoolboyLibraryPierceBeatenText:
	text "Ok! It's a comic"
	line "book!"
	done

SchoolboyLibraryPierceAfterText:
	text "There was a book"
	line "with a sarcastic"
	cont "title around here"
	cont "somewhere,"

	para "but I forgot"
	line "where exactly."
	done

SchoolgirlBritSeenText:
	text "I take studying"
	line "very seriously!"
	done

SchoolgirlBritBeatenText:
	text "Which is why I"
	line "never leave the"
	cont "library!"
	done

SchoolgirlBritAfterText:
	text "There's a novel"
	line "about a handsome"
	cont "detective here"
	cont "somewhere."

	para "I need to read it"
	line "again!"
	done

SchoolgirlJoleneSeenText:
	text "This whole thing"
	line "is idiotic."

	para "Who wouldn't be"
	line "able to figure out"
	cont "the code?"
	done

SchoolgirlJoleneBeatenText:
	text "It's so obviously-"

	para "Whoops! Almost let"
	line "it slip!"
	done

SchoolgirlJoleneAfterText:
	text "I read a really"
	line "sad book the other"
	cont "day."

	para "I still tear up"
	line "just thinking"
	cont "about it…"

	para "…Sniff…"
	done

TepigBookText:
	text "Tepig: The Living"
	line "furnace"
	done

ThePlacesBookText:
	text "Oh, the Places"
	line "You'll Probably"
	cont "Never Go to"
	done

MourningBookText:
	text "Mourning the"
	line "Departed: A"
	cont "Cubone Story"
	done

ElementaryBookText:
	text "Elementary, My"
	line "Dear Mikotoba!"

	para "The Daring"
	line "Adventures of"
	cont "Herlock Sholmes"
	done

AncientFossilsBookText:
	text "Ancient Fossils"
	line "and Where to Find"
	cont "Them"
	done

SwinubBookText:
	text "Swinub Barbeque"

	para "How Good Is It?"
	done

GotQuestionsText:
	text "Got Questions?"

	para "We Might Have the"
	line "Answers"
	done

UrsaringBookText:
	text "Ursaring: The"
	line "Bear Necesseties"
	done

CanYouBelieveText:
	text "Can You Imagine A"
	line "World Where"
	cont "#mon Aren't"
	cont "Real?"
	done

KnightsTemporaBookText:
	text "Knights Tempora:"

	para "Vanished Centuries"
	line "Ago"
	done

MoravilLibraryYoungsterText:
	text "None of the books"
	line "in the lower"
	cont "half of the room"
	cont "are used for the"
	cont "gym."

	para "Just thought I'd"
	line "let you know."
	done

MoravilLibraryLassText:
	text "I'm not involved"
	line "with the gym."

	para "That's for nerds!"
	done

MoravilLibraryTeacherText:
	text "I'm supervising the"
	line "the children in"
	cont "lieu of Steve."

	para "He's always too"
	line "busy in the back"
	cont "room."
	done

MoravilGymGuyText1:
	text "How's it going,"
	line "champ in the"
	cont "making?"

	para "Whoops, guess I"
	line "should keep it"
	cont "down."

	para "Steve teaches the"
	line "importance of type"
	cont "match-ups to new"
	cont "trainers."

	para "He's also so good"
	line "at research, that"
	cont "he already knows"
	cont "what your starter"
	cont "was!"

	para "He builds his"
	line "team around that."

	para "Just understanding"
	line "type match-ups"
	cont "should be enough."

	para "Go for it!"
	done

MoravilGymGuyText2:
	text "See!"

	para "All you needed"
	line "was strategy!"

	para "Whoops, I'm being"
	line "loud again."
	done

WatchYourLanguageText:
	text "Watch your"
	line "language."
	done

MoravilSchoolLibrary_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  4, 17, MORAVIL_SCHOOL_HALLWAY, 9
	warp_event  5, 17, MORAVIL_SCHOOL_HALLWAY, 9
	warp_event  5,  1, MORAVIL_SCHOOL_GYM, 1

	db 0 ; coord events

	db 18 ; bg events
	bg_event  4,  1, BGEVENT_READ, MoravilSchoolLibrarySign
	bg_event  2, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  3, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  4, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  5, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  6, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  7, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  5,  1, BGEVENT_READ, MoravilGymDoor
	bg_event  0,  1, BGEVENT_READ, ThePlacesBook
	bg_event  2,  1, BGEVENT_READ, KnightsTemporaBook
	bg_event  3,  1, BGEVENT_READ, SwinubBook
	bg_event  6,  1, BGEVENT_READ, AncientFossilsBook
	bg_event  8,  1, BGEVENT_READ, ElementaryBook
	bg_event  9,  1, BGEVENT_READ, GotQuestionsBook
	bg_event  2,  5, BGEVENT_READ, TepigBook
	bg_event  4,  5, BGEVENT_READ, CanYouBelieveBook
	bg_event  5,  5, BGEVENT_READ, MourningBook
	bg_event  7,  5, BGEVENT_READ, UrsaringBook

	db 9 ; object events
	object_event  0, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolLibraryReceptionistScript, -1
	object_event  1,  2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLibrarySchoolboyFinn, -1
	object_event  6,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerLibrarySchoolboyPierce, -1
	object_event  3,  6, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSchoolgirlBrit, -1
	object_event  7,  2, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerSchoolgirlJolene, -1
	object_event  6, 16, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilGymGuyScript, -1
	object_event  8, 15, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MoravilLibraryYoungsterScript, -1
	object_event  3,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, MoravilLibraryLassScript, -1
	object_event  7,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, MoravilLibraryTeacherScript, -1
