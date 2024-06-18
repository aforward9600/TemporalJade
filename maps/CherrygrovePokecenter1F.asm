	object_const_def ; object_event constants
	const ANTIQUOTOWNPOKECENTER1F_NURSE
	const ANTIQUOTOWNPOKECENTER1F_FISHER
	const ANTIQUOTOWNPOKECENTER1F_BUENA

CherrygrovePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd pokecenternurse

AntiquoPokecenterFisherScript:
	jumptextfaceplayer AntiquoPokecenterFisherText

AntiquoTownBuenaScript:
	jumptextfaceplayer AntiquoTownBuenaText

AntiquoTownMartClerk:
	opentext
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE
	closetext
	end

AntiquoPokecenterFisherText:
	text "Technology is"
	line "incredible!"

	para "That screen back"
	line "there is actually"
	cont "a PC!"

	para "You can store"
	line "items and #mon"
	cont "in the blink of"
	cont "an eye!"

	para "We used to have"
	line "to use the Abra"
	cont "Delivery System!"
	done

AntiquoTownBuenaText:
	text "I was thinking of"
	line "visiting Crescent"
	cont "Lake soon."

	para "The sand feels"
	line "so good to lay"
	cont "on!"
	done

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CHERRYGROVE_CITY, 2
	warp_event  4,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  8,  2, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoPokecenterFisherScript, -1
	object_event  2,  5, SPRITE_BUENA, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, AntiquoTownBuenaScript, -1
	object_event  8,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, AntiquoTownMartClerk, -1
