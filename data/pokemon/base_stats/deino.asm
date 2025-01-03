	db 0 ; species ID placeholder

	db  52,  65,  50,  38,  45,  50
	evs  0,   1,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DARK, DRAGON ; type
	db 45 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 40 ; step cycles to hatch
	INCBIN "gfx/pokemon/deino/front.dimensions"
	db HUSTLE, HUSTLE, HUSTLE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_DRAGON, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROAR, TOXIC, WILD_CHARGE, HIDDEN_POWER, SUNNY_DAY, PROTECT, RAIN_DANCE, IRON_TAIL, RETURN, DIG, DOUBLE_TEAM, FLAMETHROWER, SUBSTITUTE, REST, ATTRACT, THIEF, NASTY_PLOT, SLEEP_TALK, DRAGON_DANCE, DARK_PULSE, DRAGON_PULSE, IRON_HEAD, FIRE_FANG, THUNDER_FANG, ICE_FANG, DRACO_FANG
	; end
