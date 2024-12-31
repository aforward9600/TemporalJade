	db 0 ; species ID placeholder

	db  95, 120,  75,  70,  60,  75
	evs  0,   2,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db FAIRY, FAIRY ; type
	db 75 ; catch rate
	db 178 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F75 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/granbull/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, CURSE, ROAR, TOXIC, BULK_UP, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, HYPER_BEAM, LIGHT_SCREEN, PROTECT, RAIN_DANCE, BULLDOZE, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, DIG, SHADOW_BALL, BRICK_BREAK, DOUBLE_TEAM, REFLECT, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, ROCK_TOMB, AERIAL_ACE, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, THIEF, SLEEP_TALK, POWERUPPUNCH, STONE_EDGE, IRON_HEAD, SWORDS_DANCE, GIGA_IMPACT, FIRE_FANG, THUNDER_FANG, ICE_FANG, FIRE_PUNCH, THUNDERPUNCH, ICE_PUNCH, PIXIE_PUNCH, DRAIN_PUNCH, MOONBLAST
	; end
