BugContestantPointers:
; there are NUM_BUG_CONTESTANTS + 1 entries
	dw BugContestant_BugCatcherDon ; this reverts back to the player
	dw BugContestant_BugCatcherDon
	dw BugContestant_BugCatcherEd
	dw BugContestant_CooltrainerMNick
	dw BugContestant_PokefanMWilliam
	dw BugContestant_BugCatcherElmer
	dw BugContestant_CamperBarry
	dw BugContestant_PicnickerCindy
	dw BugContestant_BugCatcherBuzzy
	dw BugContestant_YoungsterSamuel
	dw BugContestant_SchoolboyPierce

; contestant format:
;   db class, id
;   dw 1st-place mon, score
;   dw 2nd-place mon, score
;   dw 3rd-place mon, score

BugContestant_BugCatcherDon:
	db BUG_CATCHER, ANTON
	dw HERDIER,     300
	dw TRUMBEAK,   285
	dw PIKIPEK,    226

BugContestant_BugCatcherEd:
	db BUG_CATCHER, STEVIE
	dw TOUCANNON, 286
	dw TOUCANNON, 251
	dw PIKIPEK,   237

BugContestant_CooltrainerMNick:
	db COOLTRAINERM, FABIO
	dw SCYTHER,    357
	dw TOUCANNON, 349
	dw PINSIR,     368

BugContestant_PokefanMWilliam:
	db POKEFANM, BERNARD
	dw PINSIR,     332
	dw TOUCANNON, 324
	dw VENONAT,    321

BugContestant_BugCatcherElmer:
	db BUG_CATCHER, ELMER
	dw TOUCANNON, 318
	dw LILLIPUP,     295
	dw PIKIPEK,   285

BugContestant_CamperBarry:
	db CAMPER, CAMPER_GARRET
	dw PINSIR,     366
	dw VENONAT,    329
	dw HERDIER,     314

BugContestant_PicnickerCindy:
	db PICNICKER, HAYLEE
	dw TOUCANNON, 341
	dw TRUMBEAK,    301
	dw PIKIPEK,   264

BugContestant_BugCatcherBuzzy:
	db BUG_CATCHER, BUZZY
	dw SCYTHER,    326
	dw TOUCANNON, 292
	dw TRUMBEAK,    282

BugContestant_YoungsterSamuel:
	db YOUNGSTER, TIMMY
	dw LILLIPUP,     270
	dw PINSIR,     282
	dw PIKIPEK,   251

BugContestant_SchoolboyPierce:
	db SCHOOLBOY, PIERCE
	dw VENONAT,    267
	dw JOLTIK,      254
	dw HERDIER,     259
