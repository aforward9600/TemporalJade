	object_const_def ; object_event constants
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_PAPER

ElmsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

Fennel:
	jumptextfaceplayer FennelText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd difficultbookshelf

ElmsHouseBook1:
	jumptext ElmsHouseBook1Text

ElmsHouseBook2:
	jumptext ElmsHouseBook2Text

ElmsHouseBook3:
	jumptext ElmsHouseBook3Text

ElmsHouseBook4:
	jumptext ElmsHouseBook4Text

ElmsHouseBook5:
	jumptext ElmsHouseBook5Text

ElmsHouseBook6:
	jumptext ElmsHouseBook6Text

FennelText:
	text "Fennel: I've been"
	line "helping Aurea with"
	cont "her research and"

	para "my sister Amanita"
	line "with establishing"
	cont "the PC system here"
	cont "in Onaga."

	para "It's a busy life!"
	done

ElmsHousePCText:
	text "It's Professor"
	line "Juniper's thesis"
	cont "on the origin of"
	cont "#mon."

	para "It's way too"
	line "complicated to"
	cont "read."
	done

ElmsHouseBook1Text:
	text "Some species of"
	line "#mon have been"
	cont "disappearing from"
	cont "the Unova region."

	para "Invasive species"
	line "from other regions"
	cont "are believed to be"
	cont "the cause."

	para "They interrupt the"
	line "ecosystem and"
	cont "drive away the"
	cont "native species, or"
	cont "worse."
	done

ElmsHouseBook2Text:
	text "Reshiram, the"
	line "#mon of truth."

	para "Zekrom, the"
	line "#mon of ideals."

	para "These two #mon"
	line "were once one."

	para "They split long"
	line "ago as the result"
	cont "of a feud between"
	cont "brothers."

	para "They were awakened"
	line "again years ago by"
	cont "two individuals"
	cont "who decided the"
	cont "fate of Unova,"

	para "N and <GREEN>."

	para "Their whereabouts"
	line "are currently"
	cont "unknown."
	done

ElmsHouseBook3Text:
	text "Following up on"
	line "the report on"
	cont "Reshiram and"
	cont "Zekrom, there was"
	cont "another #mon."

	para "Kyurem, the"
	line "Boundary #mon."

	para "It is said to be"
	line "the remaining"
	cont "husk of the dragon"
	cont "the spawned the"
	cont "other two."

	para "It kept to itself"
	line "in Giant Chasm,"
	cont "until Team Plasma"
	cont "woke it up."

	para "Their plan to use"
	line "Kyurem to freeze"
	cont "Unova was thwarted"
	cont "by <MOM>."

	para "Kyurem still lives"
	line "in Giant Chasm,"
	cont "but it is frozen"
	cont "over and cannot be"
	cont "accessed."

	para "We have decided"
	line "not to pursue it"
	cont "anymore."
	done

ElmsHouseBook4Text:
	text "Regarding the"
	line "earlier report on"
	cont "invasive species,"
	cont "we have identified"
	cont "several species"
	cont "that have been a"
	cont "problem for"
	cont "conservationists."

	para "The white-striped"
	line "Basculin is not"
	cont "native to Unova or"
	cont "Onaga, and may be"
	cont "from Sinnoh."

	para "Several species"
	line "from Johto have"
	cont "made their way to"
	cont "the regions here."

	para "The most curious"
	line "one is Kotora."

	para "There exist very"
	line "few records of it"
	cont "even existing,"
	cont "often believed to"
	cont "be a myth."

	para "One record of it"
	line "is from General"
	cont "Surge, a former"
	cont "member of the"
	cont "Indigo League"
	cont "Elite Four."

	para "There are reports"
	line "of its final form,"
	cont "Gorotora, in the"
	cont "Onaga region, but"
	cont "the few reports we"
	cont "receive are"
	cont "horrifying."
	done

ElmsHouseBook5Text:
	text "There are ruins of"
	line "shrines across the"
	cont "Onaga region."

	para "They appear to be"
	line "places of worship"
	cont "for an extinct"
	cont "religion."

	para "They each tell of"
	line "a different six-"
	cont "eyed golem."

	para "The six shrines"
	line "all have the same"
	cont "architecture, and"
	cont "are spread out."

	para "This may have been"
	line "the main religion"
	cont "of Onaga at one"
	cont "point in time."
	done

ElmsHouseBook6Text:
	text "Tornadus"

	para "Thundurus"

	para "Landorus"

	para "Enamorus"

	para "These are the"
	line "names given to the"
	cont "#mon commonly"
	cont "referred to as the"
	cont "Forces of Nature."

	para "They were revered"
	line "and feared as"
	cont "deities."

	para "They could bring"
	line "good crops, or"
	cont "total destruction."

	para "The Reveal Glass"
	line "is said to change"
	cont "the forms of these"
	cont "creatures."

	para "There is a myth"
	line "that the Reveal"
	cont "Glass was once"
	cont "shattered, and the"
	cont "Forces of Nature"
	cont "lost control and"
	cont "destroyed Unova."
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  3,  7, MURKROW_VALLEY, 3
	warp_event  4,  7, MURKROW_VALLEY, 3

	db 0 ; coord events

	db 9 ; bg events
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  4,  1, BGEVENT_READ, NewBarkTVScript
	bg_event  0,  4, BGEVENT_READ, ElmsHouseBook1
	bg_event  0,  6, BGEVENT_READ, ElmsHouseBook2
	bg_event  1,  7, BGEVENT_READ, ElmsHouseBook3
	bg_event  7,  3, BGEVENT_READ, ElmsHouseBook4
	bg_event  7,  5, BGEVENT_READ, ElmsHouseBook5
	bg_event  6,  6, BGEVENT_READ, ElmsHouseBook6

	db 2 ; object events
	object_event  1,  5, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Fennel, -1
	object_event  0,  1, SPRITE_PAPER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsHousePC, -1
