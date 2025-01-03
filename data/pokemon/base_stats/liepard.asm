	db 0 ; species ID placeholder

	db  74,  88,  60, 116,  88,  60
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 90 ; catch rate
	db 156 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/liepard/front.dimensions"
	db LIMBER, UNBURDEN, PRANKSTER ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, NASTY_PLOT, DREAM_EATER, SLEEP_TALK, DARK_PULSE, SWORDS_DANCE, GIGA_IMPACT, FIRE_FANG, THUNDER_FANG, ICE_FANG, U_TURN, HYPNOSIS, GRASS_KNOT
	; end
