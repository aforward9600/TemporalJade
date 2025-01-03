	db 0 ; species ID placeholder

	db  50,  63, 152,  35,  53, 142
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db POISON, WATER ; type
	db 75 ; catch rate
	db 173 ; base exp
	db POISON_BARB, POISON_BARB ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/toxapex/front.dimensions"
	db POISON_POINT, LIMBER, REGENERATOR ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_WATER_1, EGG_WATER_1 ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, ICE_BEAM, BLIZZARD, HYPER_BEAM, PROTECT, RAIN_DANCE, SAFEGUARD, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, ROCK_TOMB, SUBSTITUTE, REST, ATTRACT, THIEF, SURF, WATERFALL, SLEEP_TALK, ICY_WIND, POISON_JAB, VENOSHOCK, GIGA_IMPACT
	; end
