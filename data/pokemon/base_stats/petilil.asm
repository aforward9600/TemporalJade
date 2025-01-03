	db 0 ; species ID placeholder

	db  45,  35,  50,  30,  70,  50
	evs  0,   0,   0,   0,   1,   0
	;   hp  atk  def  spd  sat  sdf

	db GRASS, GRASS ; type
	db 190 ; catch rate
	db 56 ; base exp
	db CHERRI_BERRY, CHERRI_BERRY ; items
	db GENDER_F100 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/petilil/front.dimensions"
	db CHLOROPHYLL, OWN_TEMPO, LEAF_GUARD ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_PLANT, EGG_PLANT ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, PROTECT, GIGA_DRAIN, SAFEGUARD, SOLARBEAM, RETURN, DOUBLE_TEAM, SLUDGE_BOMB, SUBSTITUTE, REST, ATTRACT, ENERGY_BALL, CALM_MIND, DREAM_EATER, SLEEP_TALK, STRENGTH_SAP, MOONBLAST, HYPNOSIS, GRASS_KNOT
	; end
