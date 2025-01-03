	db 0 ; species ID placeholder

	db 115,  45,  20,  20,  45,  25
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FAIRY ; type
	db 170 ; catch rate
	db 76 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/jigglypuff/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS, UNNERVE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_FAIRY, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, ICE_BEAM, BLIZZARD, LIGHT_SCREEN, PROTECT, RAIN_DANCE, SAFEGUARD, SOLARBEAM, THUNDERBOLT, THUNDER, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, REST, ATTRACT, ENERGY_BALL, SLEEP_TALK, POWERUPPUNCH, ICY_WIND, IRON_HEAD, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, PIXIE_PUNCH, DRAIN_PUNCH, MOONBLAST, GRASS_KNOT
	; end
