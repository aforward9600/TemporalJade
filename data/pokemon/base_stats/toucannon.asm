	db 0 ; species ID placeholder

	db  80, 120,  75,  60,  75,  75
	evs  0,   3,   0,   0,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp
	db NO_ITEM, ORAN_BERRY ; items
	db GENDER_F50 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/toucannon/front.dimensions"
	db KEEN_EYE, SKILL_LINK, SHEER_FORCE ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_FLYING, EGG_FLYING ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HIDDEN_POWER, SUNNY_DAY, PROTECT, HYPER_BEAM, RAIN_DANCE, RETURN, BRICK_BREAK, DOUBLE_TEAM, AERIAL_ACE, SUBSTITUTE, FLASH_CANNON, REST, ATTRACT, THIEF, STEEL_WING, FLY, ROOST, SLEEP_TALK, IRON_HEAD, SWORDS_DANCE, GIGA_IMPACT, U_TURN
	; end
