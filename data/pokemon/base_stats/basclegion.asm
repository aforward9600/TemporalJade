	db 0 ; species ID placeholder

	db 120, 122,  65,  78,  80,  75
	evs  2,   0,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db WATER, GHOST ; type
	db 45 ; catch rate
	db 230 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/basclegion/front.dimensions"
	db SWIFT_SWIM, ADAPTABILITY, MOLD_BREAKER ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_2, EGG_WATER_2 ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, RETURN, SHADOW_BALL, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, SUBSTITUTE, REST, ATTRACT, THIEF, SURF, WATERFALL, CALM_MIND, NASTY_PLOT, SLEEP_TALK, ICY_WIND, IRON_HEAD, GIGA_IMPACT, ICE_FANG, DRACO_FANG, U_TURN
	; end
