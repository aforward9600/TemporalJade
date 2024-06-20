	object_const_def ; object_event constants
	const MORAVILSCHOOLLIBRARY_RECEPTIONIST

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
	writetext WrongPasswordText
	waitbutton
	closetext
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

;EVENT_GOT_PASSWORD_FOR_SCHOOL_GYM

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

MoravilSchoolLibrary_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 17, MORAVIL_SCHOOL_HALLWAY, 9
	warp_event  5, 17, MORAVIL_SCHOOL_HALLWAY, 9

	db 0 ; coord events

	db 8 ; bg events
	bg_event  4,  1, BGEVENT_READ, MoravilSchoolLibrarySign
	bg_event  2, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  3, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  4, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  5, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  6, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  7, 11, BGEVENT_READ, MoravilSchoolLibraryBooks
	bg_event  5,  1, BGEVENT_READ, MoravilGymDoor

	db 1 ; object events
	object_event  0, 16, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoravilSchoolLibraryReceptionistScript, -1
