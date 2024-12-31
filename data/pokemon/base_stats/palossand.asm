	db 0 ; species ID placeholder

	db  85,  75, 110,  35, 100,  75
	evs  0,   0,   2,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GROUND ; type
	db 60 ; catch rate
	db 168 ; base exp
	db SPELL_TAG, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/palossand/front.dimensions"
	db SYNCHRONIZE, INNER_FOCUS ; wBaseAbility1, wBaseAbility2
	dw NULL ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, HYPER_BEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, BULLDOZE, EARTHQUAKE, RETURN, DIG, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SLUDGE_BOMB, SANDSTORM, ROCK_TOMB, SUBSTITUTE, ROCK_SLIDE, REST, ATTRACT, THIEF, ENERGY_BALL, NASTY_PLOT, SLEEP_TALK, STONE_EDGE, SWORDS_DANCE, WILL_O_WISP, GIGA_IMPACT, STRENGTH_SAP
	; end
