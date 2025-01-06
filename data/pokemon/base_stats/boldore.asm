	db 0 ; species ID placeholder

	db  70, 105, 105,  20,  50,  40
	evs  0,   1,   1,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db ROCK, ROCK ; type
	db 120 ; catch rate
	db 137 ; base exp
	db EVERSTONE, HARD_STONE ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/boldore/front.dimensions"
	db STURDY, WEAK_ARMOR, SAND_FORCE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, PROTECT, BULLDOZE, EARTHQUAKE, RETURN, DOUBLE_TEAM, SANDSTORM, ROCK_TOMB, FLASH_CANNON, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, SLEEP_TALK, STONE_EDGE
	; end
