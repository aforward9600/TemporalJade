	object_const_def ; object_event constants
	const MORAVILSCHOOLGYM_STEVE

MoravilSchoolGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

GymLeaderSteve:
	end

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
