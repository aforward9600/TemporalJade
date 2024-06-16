Music_Anthem:
	channel_count 4
	channel 1, Music_Anthem_Ch1
	channel 2, Music_Anthem_Ch2
	channel 3, Music_Anthem_Ch3
	channel 4, Music_Anthem_Ch4

Music_Anthem_Ch1:
	tempo $A0
	volume 7, 7
	stereo_panning TRUE, TRUE
Music_Anthem_Ch1_loop:
	duty_cycle 1
	octave 3
	note_type 12, 15, 1
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 5
	sound_call Music_Anthem_Ch1_ditty3
	rest 5
	sound_call Music_Anthem_Ch1_ditty4
	rest 5
	sound_call Music_Anthem_Ch1_ditty5
	rest 5
	sound_call Music_Anthem_Ch1_ditty5
	rest 5
	duty_cycle 0
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 1
	duty_cycle 1
	volume_envelope 15, 7
	vibrato 15, 1, 3
	note G#, 4
	note F#, 16
	note F_, 8
	note C#, 8
	note D#, 12
	note_type 15, 0, -7
	note D#, 16
	sound_loop 0, Music_Anthem_Ch1_loop

Music_Anthem_Ch1_ditty1:
	note A#, 2
	note A#, 2
	rest 2
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	note A#, 1
	sound_ret

Music_Anthem_Ch1_ditty2:
	note G#, 2
	note G#, 2
	rest 2
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	sound_ret

Music_Anthem_Ch1_ditty3:
	note F#, 2
	note F#, 2
	rest 2
	note F#, 1
	note F#, 1
	note F#, 1
	note F#, 1
	note F#, 1
	sound_ret

Music_Anthem_Ch1_ditty4:
	note F_, 2
	note F_, 2
	rest 2
	note F_, 1
	note F_, 1
	note F_, 1
	note F_, 1
	note F_, 1
	sound_ret

Music_Anthem_Ch1_ditty5:
	note D#, 2
	note D#, 2
	rest 2
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	note D#, 1
	sound_ret

Music_Anthem_Ch2:
Music_Anthem_Ch2_loop:
	octave 2
	note_type 12, 15, 1
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty1
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 5
	sound_call Music_Anthem_Ch1_ditty2
	rest 5
	sound_call Music_Anthem_Ch1_ditty3
	rest 5
	sound_call Music_Anthem_Ch1_ditty4
	rest 5
	sound_call Music_Anthem_Ch1_ditty5
	rest 5
	sound_call Music_Anthem_Ch1_ditty5
	rest 1
	duty_cycle 1
	volume_envelope 15, 7
	vibrato 15, 1, 3
	octave 3
	note F_, 4
	note A#, 10
	note F_, 2
	note G#, 2
	note A#, 2
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note G#, 4
	note D#, 4
	note F_, 12
	note G#, 8
	note G#, 4
	note A#, 4
	note F_, 4
	note A#, 10
	note F_, 2
	note G#, 2
	note A#, 2
	octave 4
	note C_, 4
	octave 3
	note A#, 4
	note G#, 4
	octave 4
	note F_, 4
	note D#, 12
	note_type 15, 0, -7
	note D#, 16
	sound_loop 0, Music_Anthem_Ch2_loop

Music_Anthem_Ch3:
	note_type 12, 1, 7
	octave 1
Music_Anthem_Ch3_loop:
	note A#, 16
	note A#, 16
	note G#, 16
	note G#, 16
	note F#, 16
	note F_, 16
	note D#, 16
	note D#, 16
	sound_loop 0, Music_Anthem_Ch3_loop

Music_Anthem_Ch4:
	toggle_noise 1
	drum_speed 12
Music_Anthem_Ch4_loop:
	drum_note 6, 1
	rest 3
	sound_loop 0, Music_Anthem_Ch4_loop
