	db 0 ; species ID placeholder

	db  44,  50,  91,  10,  24,  86
	evs  0,   0,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, STEEL ; type
	db 255 ; catch rate
	db 61 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/ferroseed/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, GIGA_DRAIN, SOLARBEAM, THUNDERBOLT, RETURN, DOUBLE_TEAM, SUBSTITUTE, FLASH_CANNON, REST, ATTRACT, THIEF, ENERGY_BALL, SLEEP_TALK, IRON_HEAD, POISON_JAB, STEEL_SLICE
	; end
