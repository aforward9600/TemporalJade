	db 0 ; species ID placeholder

	db  41,  50,  37,  66,  50,  37
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DARK ; type
	db 255 ; catch rate
	db 56 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/purrloin/front.dimensions"
	db LIMBER, UNBURDEN, PRANKSTER ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, NASTY_PLOT, DREAM_EATER, SLEEP_TALK, DARK_PULSE, SWORDS_DANCE, FIRE_FANG, THUNDER_FANG, ICE_FANG, U_TURN, HYPNOSIS, GRASS_KNOT
	; end
