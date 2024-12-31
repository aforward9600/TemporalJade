	db 0 ; species ID placeholder

	db  85,  80,  90,  60, 105,  95
	evs  0,   0,   0,   0,   2,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 180 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/porygon2/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SOLARBEAM, IRON_TAIL, THUNDERBOLT, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, FLASH_CANNON, REST, THIEF, ENERGY_BALL, CALM_MIND, NASTY_PLOT, SLEEP_TALK, ICY_WIND, DARK_PULSE, GIGA_IMPACT, MOONBLAST, HYPNOSIS
	; end
