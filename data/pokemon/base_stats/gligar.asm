	db 0 ; species ID placeholder

	db  65,  75, 105,  85,  35,  65
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GROUND, FLYING ; type
	db 60 ; catch rate
	db 108 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/gligar/front.dimensions"
	db HYPER_CUTTER, SAND_VEIL, IMMUNITY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_BUG, EGG_BUG ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, BULK_UP, HIDDEN_POWER, SUNNY_DAY, PROTECT, BULLDOZE, IRON_TAIL, EARTHQUAKE, RETURN, DIG, BRICK_BREAK, DOUBLE_TEAM, ACROBATICS, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, AERIAL_ACE, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, THIEF, STEEL_WING, FLY, ROOST, DREAM_EATER, SLEEP_TALK, STONE_EDGE, X_SCISSOR, DARK_PULSE, DRAGON_PULSE, IRON_HEAD, SWORDS_DANCE, POISON_JAB, GIGA_IMPACT, FIRE_FANG, THUNDER_FANG, ICE_FANG, DRACO_FANG, U_TURN
	; end
