	object_const_def ; object_event constants
	const BLACKRIVERPASSAGEROUTE25_HIKER
	const BLACKRIVERPASSAGEROUTE25_POKE_BALL

BlackRiverPassageRoute25_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

BlackRiverPassageHikerOzzy:
	trainer HIKER, OZZY, EVENT_BEAT_HIKER_OZZY, BlackRiverPassageHikerOzzySeenText, BlackRiverPassageHikerOzzyBeatenText, 0, .AfterScript

.AfterScript:
	endifjustbattled
	opentext
	writetext BlackRiverPassageHikerOzzyAfterText
	waitbutton
	closetext
	end

BlackRiverPassagePotion:
	itemball POTION

BlackRiverPassageRoute25Rock:
	jumpstd smashrock

BlackRiverPassageHikerOzzySeenText:
	text "It's pretty dark in"
	line "here!"
	done

BlackRiverPassageHikerOzzyBeatenText:
	text "Too dark! Too"
	line "dark!"
	done

BlackRiverPassageHikerOzzyAfterText:
	text "I hear water on"
	line "the other side of"
	cont "those rocks, but I"
	cont "get past that big"
	cont "rock!"
	done

BlackRiverPassageRoute25_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 17,  5, ROUTE_30, 1
;	warp_event 21,  3, DARK_CAVE_BLACKTHORN_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event 20,  4, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, BlackRiverPassageHikerOzzy, -1
	object_event 21,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BlackRiverPassagePotion, EVENT_DARK_CAVE_NEW_ENTRANCE_POTION
	object_event 15,  4, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlackRiverPassageRoute25Rock, -1

