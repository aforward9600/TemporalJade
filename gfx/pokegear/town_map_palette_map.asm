	const_def
	const PAL_TOWNMAP_BORDER   ; 0
	const PAL_TOWNMAP_EARTH    ; 1
	const PAL_TOWNMAP_MOUNTAIN ; 2
	const PAL_TOWNMAP_CITY     ; 3
	const PAL_TOWNMAP_POI      ; 4
	const PAL_TOWNMAP_POI_MTN  ; 5

townmappals: MACRO
rept _NARG / 2
	dn PAL_TOWNMAP_\2, PAL_TOWNMAP_\1
	shift
	shift
endr
ENDM

	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER
	townmappals EARTH,    EARTH,    CITY,     EARTH,    POI,      POI_MTN,  POI,      POI_MTN
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER
	townmappals EARTH,    EARTH,    BORDER,   EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN
	townmappals EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
; gfx/pokegear/pokegear.png
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   POI,      POI,      POI,      BORDER
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     BORDER
	townmappals CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY,     CITY
	townmappals BORDER,   BORDER,   BORDER,   BORDER,   BORDER,   EARTH,    EARTH,    EARTH
	townmappals EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH
	townmappals EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH
	townmappals EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    EARTH,    MOUNTAIN, MOUNTAIN
	townmappals MOUNTAIN, MOUNTAIN, MOUNTAIN, BORDER,   BORDER,   BORDER,   BORDER,   BORDER
