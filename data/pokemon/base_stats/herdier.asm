	db 0 ; species ID placeholder

	db  65,  80,  65,  60,  35,  65
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 120 ; catch rate
	db 130 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/herdier/front.dimensions"
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, ROCK_TOMB, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, SLEEP_TALK, GIGA_IMPACT, FIRE_FANG, THUNDER_FANG, ICE_FANG
	; end
