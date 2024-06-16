;Based on MIDI by ryanisthebomb203
Music_DahliaEncounter:
	channel_count 4
	channel 1, Music_DahliaEncounter_Ch1
	channel 2, Music_DahliaEncounter_Ch2
	channel 3, Music_DahliaEncounter_Ch3
	channel 4, Music_DahliaEncounter_Ch4

Music_DahliaEncounter_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 115
;Bar 28
	octave 4
	volume_envelope 7, 7
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 29
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 30
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 31
	note G_, 4
	note A_, 2
	note D_, 9
	rest 9
;Bar 32
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 33
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 34
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 35
	note G_, 6
	note A_, 9
	rest 9
;Bar 36
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 37
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 38
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 39
	note G_, 4
	note A_, 2
	note D_, 16
	note D_, 2
;Bar 40
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	note E_, 2
;Bar 41
	note D_, 6
	note A_, 6
	octave 5
	note C_, 6
;Bar 42
	octave 4
	note E_, 6
	note C_, 4
	octave 3
	note A_, 4
;Bar 43
	octave 4
	note C_, 2
	note D_, 4
	note D_, 9
	rest 16
	rest 1
	sound_loop 0, Music_DahliaEncounter_Ch1

Music_DahliaEncounter_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 28
	octave 2
	volume_envelope 9, 7
Music_DahliaEncounter_Ch2Loop:
	note D_, 16
;Bar 29
	note D_, 16
;Bar 30
	note C_, 16
;Bar 31
	octave 1
	note B_, 16
;Bar 32
	note A#, 16
;Bar 33
	octave 2
	note D_, 16
;Bar 34
	note C_, 16
;Bar 35
	note D_, 16
;Bar 36
	note D_, 16
;Bar 37
	note D_, 16
;Bar 38
	note C_, 16
;Bar 39
	octave 1
	note B_, 16
;Bar 40
	note A#, 16
;Bar 41
	note A#, 16
;Bar 42
	octave 2
	note C_, 16
;Bar 43
	note D_, 15
	rest 16
	rest 1
	sound_loop 0, Music_DahliaEncounter_Ch2Loop

Music_DahliaEncounter_Ch3:
	note_type 12, 1, 0
;Bar 28
	octave 4
	volume_envelope 2, 0
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 29
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 30
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 31
	note G_, 4
	note A_, 2
	note D_, 9
	rest 9
;Bar 32
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 33
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 34
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 35
	note G_, 6
	note A_, 9
	rest 9
;Bar 36
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 37
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 38
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 39
	note G_, 4
	note A_, 2
	note D_, 16
	note D_, 2
;Bar 40
	note D_, 2
	octave 4
	note A#, 2
	octave 5
	note F_, 2
	note E_, 2
;Bar 41
	note D_, 6
	note A_, 6
	octave 6
	note C_, 6
;Bar 42
	octave 5
	note E_, 6
	note C_, 4
	octave 4
	note A_, 4
;Bar 43
	octave 5
	note C_, 2
	note D_, 4
	note D_, 9
	rest 16
	rest 1
	sound_loop 0, Music_DahliaEncounter_Ch3

Music_DahliaEncounter_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 28
	octave 5
	volume_envelope 2, 0
Music_DahliaEncounter_Ch4Loop:
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 29
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 30
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 31
	drum_note 8, 4
	drum_note 10, 2
	drum_note 3, 9
	rest 9
;Bar 32
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 33
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 34
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 35
	drum_note 8, 6
	drum_note 10, 9
	rest 9
;Bar 36
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 37
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 38
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 39
	drum_note 8, 4
	drum_note 10, 2
	drum_note 3, 16
	drum_note 3, 2
;Bar 40
	drum_note 3, 2
	octave 4
	drum_note 11, 2
	octave 5
	drum_note 6, 2
	drum_note 5, 2
;Bar 41
	drum_note 3, 6
	drum_note 10, 6
	octave 6
	drum_note 1, 6
;Bar 42
	octave 5
	drum_note 5, 6
	drum_note 1, 4
	octave 4
	drum_note 10, 4
;Bar 43
	octave 5
	drum_note 1, 2
	drum_note 3, 4
	drum_note 3, 9
	rest 16
	rest 1
	sound_loop 0, Music_DahliaEncounter_Ch4Loop
