	db 0 ; species ID placeholder

	db  85,  60,  85, 100, 105, 100
	;   hp  atk  def  spd  sat  sdf

	db FIRE, GHOST ; type
	db 75 ; catch rate
	db 178 ; base exp
	db BURNT_BERRY, BURNT_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ninetales/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, ROAR, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, SAFEGUARD, SOLARBEAM, IRON_TAIL, RETURN, DIG, SHADOW_BALL, DOUBLE_TEAM, FLAMETHROWER, FIRE_BLAST, SUBSTITUTE, REST, ATTRACT, ENERGY_BALL, CALM_MIND, NASTY_PLOT, DREAM_EATER, SLEEP_TALK, DARK_PULSE, WILL_O_WISP, GIGA_IMPACT, FIRE_FANG
	; end
