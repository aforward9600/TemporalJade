	object_const_def ; object_event constants
	const CRESCENTLAKE_FISHER

CrescentLake_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CrescenLakeFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_OLD_ROD
	iftrue .GotOldRod
	writetext OldRodText_Question
	yesorno
	iffalse .Refused
	writetext OldRodText_Yes
	buttonsound
	verbosegiveitem OLD_ROD
	writetext OldRodText_GiveOldRod
	waitbutton
	closetext
	setevent EVENT_GOT_OLD_ROD
	end

.Refused:
	writetext OldRodText_No
	waitbutton
	closetext
	end

.GotOldRod:
	writetext OldRodText_After
	waitbutton
	closetext
	end

CrescentLakeSign:
	jumptext CrescentLakeSignText

OldRodText_Question:
	text "This is a great"
	line "fishing spot."

	para "You saw people"
	line "fishing? How"
	cont "about you?"

	para "Would you like one"
	line "of my Rods?"
	done

OldRodText_Yes:
	text "Heh, that's good"
	line "to hear."

	para "Now you're an"
	line "angler too!"
	done

OldRodText_GiveOldRod:
	text "Fishing is great!"

	para "If there's water,"
	line "be it the sea or a"

	para "stream, try out"
	line "your Rod."
	done

OldRodText_No:
	text "Oh. That's rather"
	line "disappointing…"
	done

OldRodText_After:
	text "Yo, kid. How are"
	line "they biting?"
	done

CrescentLakeSignText:
	text "Crescent Lake"

	para "Route 26 -"
	line "Route 36"
	done

CrescentLake_MapEvents:
	db 0, 0 ; filler

	db 0 ; warp events

	db 0 ; coord events

	db 1 ; bg events
	bg_event 37, 19, BGEVENT_READ, CrescentLakeSign

	db 1 ; object events
	object_event  28, 19, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CrescenLakeFisherScript, -1
