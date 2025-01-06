	db 0 ; species ID placeholder

	db  85, 135, 130,  25,  60,  80
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 45 ; catch rate
	db 232 ; base exp
	db EVERSTONE, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/gigalith/front.dimensions"
	db STURDY, SANDSTREAM, SAND_FORCE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, PROTECT, BULLDOZE, SOLARBEAM, EARTHQUAKE, RETURN, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FLASH_CANNON, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, SLEEP_TALK, STONE_EDGE, IRON_HEAD, GIGA_IMPACT
	; end
