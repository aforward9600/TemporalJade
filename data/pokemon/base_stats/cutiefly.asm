	db 0 ; species ID placeholder

	db  40,  45,  40,  84,  55,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db BUG, FAIRY ; type
	db 190 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/cutiefly/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_BUG, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, LIGHT_SCREEN, PROTECT, GIGA_DRAIN, SAFEGUARD, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, ACROBATICS, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, ROOST, ENERGY_BALL, CALM_MIND, DREAM_EATER, SLEEP_TALK, STRENGTH_SAP, U_TURN, MOONBLAST, HYPNOSIS
	; end
