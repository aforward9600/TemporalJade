Music_HoennRivalBattle:
	channel_count 4
	channel 1, Music_HoennRivalBattle_Ch1
	channel 2, Music_HoennRivalBattle_Ch2
	channel 3, Music_HoennRivalBattle_Ch3
	channel 4, Music_HoennRivalBattle_Ch4
 
 
Music_HoennRivalBattle_Ch1:
	duty_cycle $3
	vibrato 18, 1, 5
	pitch_offset $0001
	tempo 96
	note_type 12, 11, 2
	octave 4
Music_HoennRivalBattle_Ch1_loop_1:
	note F_, 1
	note C_, 1
	note E_, 2
	sound_loop 8, Music_HoennRivalBattle_Ch1_loop_1
	duty_cycle $0
	volume_envelope 8, 2
	octave 2
	note A_, 6
	note F_, 6
	note A_, 4
	octave 3
	note C_, 6
	note D_, 6
	volume_envelope 8, 6
	note F_, 4
	octave 2
	volume_envelope 8, 2
	note A_, 6
	note F_, 6
	note A_, 4
	octave 3
	note C_, 6
	note D_, 6
	volume_envelope 8, 6
	note A_, 4
	volume_envelope 8, 2
	note A_, 6
	note F_, 6
	note A_, 4
	octave 4
	note C_, 6
	note D_, 6
	volume_envelope 8, 6
	note F_, 2
	volume_envelope 6, 4
	octave 5
	note C_, 1
	note D_, 1
	note E_, 2
	note F_, 2
	note G_, 2
	note G_, 4
	note F_, 2
	note E_, 2
	note F_, 2
	note F_, 1
	note E_, 1
	volume_envelope 6, 0
	note D_, 5
	volume_envelope 6, 7
	note D_, 9
Music_HoennRivalBattle_Ch1_loop_main:
	duty_cycle $2
	volume_envelope 6, 0
Music_HoennRivalBattle_Ch1_loop_2:
	octave 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
	sound_loop 4, Music_HoennRivalBattle_Ch1_loop_2
Music_HoennRivalBattle_Ch1_loop_3:
	octave 2
	note D#, 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 2
	sound_loop 4, Music_HoennRivalBattle_Ch1_loop_3
Music_HoennRivalBattle_Ch1_loop_4:
	octave 2
	note F_, 2
	note A#, 2
	octave 3
	note D_, 2
	note F_, 2
	sound_loop 4, Music_HoennRivalBattle_Ch1_loop_4
Music_HoennRivalBattle_Ch1_loop_5:
	octave 2
	note D#, 2
	note G#, 2
	octave 3
	note C_, 2
	note D#, 2
	sound_loop 4, Music_HoennRivalBattle_Ch1_loop_5
	duty_cycle $1
	volume_envelope 9, 7
	octave 4
	note D_, 4
	octave 3
	note A#, 4
	note F_, 4
	note D#, 2
	note D_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note D_, 2
	note D#, 4
	note D_, 2
	note D#, 2
	note F_, 2 ;
	octave 4
	note D#, 4
	note C_, 4
	octave 3
	note G_, 4
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note D#, 2
	note F_, 4
	note D_, 2
	note D#, 2
	note F_, 2 ;
	octave 4
	note D#, 4
	note C_, 4
	octave 3
	note G_, 4
	note D#, 2
	note D_, 2
	note C_, 2
	note D_, 2
	note D#, 2
	note F_, 4
	note G_, 2
	note A_, 2
	octave 4
	note C_, 2 ;
	volume_envelope 8, 7
	note F_, 6
	note G_, 6
	volume_envelope 8, 2
	note A_, 6
	volume_envelope 8, 7
	note A_, 6
	volume_envelope 8, 2
	note A#, 2
	note A#, 2
	volume_envelope 8, 7
	note A_, 4
	duty_cycle $0
Music_HoennRivalBattle_Ch1_loop_6:
	rest 16
	sound_loop 7, Music_HoennRivalBattle_Ch1_loop_6
	volume_envelope 8, 4
	octave 2
	note A#, 2
	note F_, 2
	note A#, 2
	octave 3
	note F_, 4
	note F#, 4
	note F_, 2
	note D#, 8
	volume_envelope 8, 7
	note F#, 8
	volume_envelope 8, 4
	octave 2
	note A#, 2
	note F_, 2
	note A#, 2
	octave 3
	note F_, 4
	note F#, 4
	note F_, 2
	note D#, 8
	volume_envelope 8, 7
	note F#, 10
	volume_envelope 9, 4
	sound_call Music_HoennRivalBattle_Ch2_branch_1
	duty_cycle $2
	volume_envelope 11, 1
	octave 5
Music_HoennRivalBattle_Ch1_loop_7:
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 1
	note C_, 4
	note C_, 2
	octave 4
	note A#, 2
	note G#, 2
	note G_, 4
	note G#, 4
	note A_, 4
	note A#, 2
	octave 5
	note D#, 4
	sound_loop 2, Music_HoennRivalBattle_Ch1_loop_7
	duty_cycle $1
	volume_envelope 8, 0
	octave 3
	note F_, 8
	volume_envelope 8, 7
	note F_, 8
	octave 2
	volume_envelope 8, 0
	note F_, 4
	volume_envelope 8, 7
	note F_, 8
	note G_, 4
	volume_envelope 8, 0
	note G#, 8
	volume_envelope 8, 7
	note G#, 8
	octave 3
	note D#, 6
	note F_, 6
	note D#, 4
	volume_envelope 8, 0
	note D_, 8
	volume_envelope 8, 7
	note D_, 8
	octave 2
	volume_envelope 8, 0
	note G_, 4
	volume_envelope 8, 7
	note G_, 8
	note A#, 4
	octave 3
	note C_, 8
	octave 2
	note A#, 8
	note G#, 8
	note D#, 8
	sound_loop 0, Music_HoennRivalBattle_Ch1_loop_main
 
Music_HoennRivalBattle_Ch2:
	duty_cycle $2
	vibrato 18, 1, 5
	pitch_offset $0001
	note_type 12, 7, 1
	octave 5
Music_HoennRivalBattle_Ch2_loop_1:
	note C_, 1
	note F_, 2
	note G_, 1
	sound_loop 8, Music_HoennRivalBattle_Ch2_loop_1
	duty_cycle $0
	volume_envelope 10, 2
	octave 3
	note C_, 6
	octave 2
	note A_, 6
	octave 3
	note C_, 4
	note F_, 6
	note G_, 6
	volume_envelope 10, 5
	note A_, 4
	volume_envelope 10, 2
	note C_, 6
	octave 2
	note A_, 6
	octave 3
	note C_, 4
	note F_, 6
	note G_, 6
	octave 4
	volume_envelope 10, 5
	note C_, 4
	volume_envelope 10, 2
	note C_, 6
	octave 3
	note A_, 6
	octave 4
	note C_, 4
	note F_, 6
	note G_, 6
	volume_envelope 10, 5
	note A_, 4
	volume_envelope 10, 2
	note C_, 6
	octave 3
	note A_, 6
	octave 4
	note C_, 4
	note F_, 6
	note G_, 6
	volume_envelope 10, 6
	octave 5
	note C_, 4
Music_HoennRivalBattle_Ch2_loop_main:
	duty_cycle $3
	volume_envelope 10, 6
	octave 4
	note C_, 6
	octave 3
	note F_, 6
	octave 4
	note D#, 2
	note D_, 2
	note C_, 2
	note D#, 2
	note G_, 2
	note A#, 4
	note A_, 2
	note G_, 2
	note F_, 2
	volume_envelope 10, 0
	note D#, 16
	volume_envelope 10, 6
	note D#, 16
	note D_, 6
	note F_, 6
	note A#, 4
	octave 5
	note D_, 4
	octave 4
	note A#, 4
	note F_, 4
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note D#, 8
	note D_, 8
	note C_, 8
	note D#, 8
	duty_cycle $0
	volume_envelope 10, 7
	note F_, 4
	note D_, 4
	octave 3
	note A#, 8
	duty_cycle $2
	volume_envelope 9, 3
	octave 4
	note F_, 4
	note D_, 4
	octave 3
	volume_envelope 9, 5
	note A#, 8
	duty_cycle $0
	volume_envelope 10, 7
	octave 4
	note G_, 4
	note D#, 4
	note C_, 8
	duty_cycle $2
	volume_envelope 9, 3
	note G_, 4
	note D#, 4
	volume_envelope 9, 5
	note C_, 8
	duty_cycle $0
	volume_envelope 10, 7
	note G_, 4
	note D#, 4
	note C_, 8
	duty_cycle $2
	volume_envelope 9, 3
	note G_, 4
	note D#, 4
	volume_envelope 9, 5
	note C_, 8
	duty_cycle $0
	volume_envelope 10, 7
	note A_, 6
	note A#, 6
	volume_envelope 10, 2
	octave 5
	note C_, 6
	volume_envelope 10, 7
	note C_, 6
	volume_envelope 10, 2
	note D_, 2
	note D_, 2
	volume_envelope 10, 7
	note C_, 4
	duty_cycle $1
	volume_envelope 9, 0
	octave 2
	note A#, 8
	octave 3
	note A#, 8
	note F_, 12
	note D#, 2
	note F_, 2
	note F#, 8
	note A_, 8
	note F_, 12
	note D#, 2
	note F_, 2
	note F#, 8
	note A_, 8
	note F_, 12
	note D#, 2
	note D_, 2
	note D#, 8
	octave 2
	note A_, 8
	octave 3
	note A#, 16
	volume_envelope 9, 7
	note A#, 16
	volume_envelope 10, 0
	octave 4
	note A#, 16
	volume_envelope 10, 7
	note A#, 8
	duty_cycle $0
	volume_envelope 10, 4
	octave 3
	note B_, 8
	sound_call Music_HoennRivalBattle_Ch2_branch_1
	rest 2
	duty_cycle $3
	volume_envelope 10, 0
	octave 4
	note C_, 16
	volume_envelope 10, 7
	note C_, 16
	volume_envelope 10, 0
	octave 3
	note F_, 16
	volume_envelope 10, 7
	note F_, 16
	octave 4
	volume_envelope 10, 0
	note C_, 8
	volume_envelope 10, 7
	note C_, 8
	volume_envelope 10, 0
	octave 3
	note C_, 4
	volume_envelope 10, 7
	note C_, 8
	note D_, 4
	volume_envelope 10, 0
	note D#, 8
	volume_envelope 10, 7
	note D#, 8
	octave 4
	note C_, 6
	octave 3
	note A#, 6
	note G#, 4
	volume_envelope 10, 0
	note A#, 8
	volume_envelope 10, 7
	note A#, 8
	volume_envelope 10, 0
	note D_, 4
	volume_envelope 10, 7
	note D_, 8
	note F_, 4
	volume_envelope 10, 0
	note D#, 16
	volume_envelope 10, 7
	note D#, 16
	sound_loop 0, Music_HoennRivalBattle_Ch2_loop_main
 
Music_HoennRivalBattle_Ch2_branch_1:
	note A#, 4
	note F_, 4
	note B_, 4
	note G#, 4
	note A#, 4
	note F_, 4
	note G#, 4
	note D#, 4
	note A#, 4
	note F_, 4
	note B_, 4
	note G#, 4
	note A#, 4
	octave 4
	note D_, 4
	octave 3
	note B_, 4
	note A#, 2
	sound_ret
 
Music_HoennRivalBattle_Ch3:
	note_type 12, 1, 9
	octave 3
	note C_, 16
	octave 2
	note A#, 8
	note G_, 4
	note E_, 4
	sound_call Music_HoennRivalBattle_Ch3_branch_1
	sound_call Music_HoennRivalBattle_Ch3_branch_2
	sound_call Music_HoennRivalBattle_Ch3_branch_1
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 4
	note C_, 2
	note F_, 2
	note G_, 2
	sound_call Music_HoennRivalBattle_Ch3_branch_1
	sound_call Music_HoennRivalBattle_Ch3_branch_2
	sound_call Music_HoennRivalBattle_Ch3_branch_1
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 4
	note C_, 2
	note F_, 2
	note A_, 2
Music_HoennRivalBattle_Ch3_loop_main:
Music_HoennRivalBattle_Ch3_loop_1:
	note C_, 2
	note F_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_1
	note G_, 2
	note F_, 2
Music_HoennRivalBattle_Ch3_loop_2:
	note D#, 2
	note G#, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_2
	note A#, 2
	note G#, 2
Music_HoennRivalBattle_Ch3_loop_3:
	note F_, 2
	note A#, 2
	sound_loop 8, Music_HoennRivalBattle_Ch3_loop_3
Music_HoennRivalBattle_Ch3_loop_4:
	note D#, 2
	note G#, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_4
	octave 3
	note C_, 2
	octave 2
	note G#, 2
Music_HoennRivalBattle_Ch3_loop_5:
	note D_, 2
	note F_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_5
	note G_, 2
	note F_, 2
Music_HoennRivalBattle_Ch3_loop_6:
	note D#, 2
	note G_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_6
	note A_, 2
	note G_, 2
Music_HoennRivalBattle_Ch3_loop_7:
	note D#, 2
	note G_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_7
	note A_, 2
	note G_, 2
	note F_, 2
	note A_, 4
	note F_, 2
	note A#, 1
	rest 1
	note A#, 2
	note F_, 2
	octave 3
	note C_, 1
	rest 1
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note C_, 2
	octave 2
	note F_, 2
	octave 3
	note D_, 1
	rest 1
	note D_, 2
	note C_, 2
	octave 2
	note A_, 2
Music_HoennRivalBattle_Ch3_loop_8:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	sound_loop 6, Music_HoennRivalBattle_Ch3_loop_8
	note A#, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
Music_HoennRivalBattle_Ch3_loop_9:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	sound_loop 6, Music_HoennRivalBattle_Ch3_loop_9
	note A#, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
Music_HoennRivalBattle_Ch3_loop_10:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note A#, 2
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note A#, 2
	sound_loop 3, Music_HoennRivalBattle_Ch3_loop_10
Music_HoennRivalBattle_Ch3_loop_11:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	sound_loop 15, Music_HoennRivalBattle_Ch3_loop_11
	note B_, 2
	note G#, 2
Music_HoennRivalBattle_Ch3_loop_12:
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	sound_loop 14, Music_HoennRivalBattle_Ch3_loop_12
	note F_, 2
	octave 1
	note A#, 2
	octave 2
	note F_, 2
	note B_, 2
Music_HoennRivalBattle_Ch3_loop_13:
	note C_, 2
	note F_, 2
	sound_loop 8, Music_HoennRivalBattle_Ch3_loop_13
Music_HoennRivalBattle_Ch3_loop_14:
	note D#, 2
	note G_, 2
	sound_loop 6, Music_HoennRivalBattle_Ch3_loop_14
	note D#, 2
	note A#, 2
	octave 3
	note D_, 2
	octave 2
	note A#, 2
Music_HoennRivalBattle_Ch3_loop_15:
	note C_, 2
	note F_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_15
	note G_, 2
	note F_, 2
Music_HoennRivalBattle_Ch3_loop_16:
	note D#, 2
	note G_, 2
	sound_loop 7, Music_HoennRivalBattle_Ch3_loop_16
	note A#, 2
	note G#, 2
Music_HoennRivalBattle_Ch3_loop_17:
	note F_, 2
	note A#, 2
	sound_loop 8, Music_HoennRivalBattle_Ch3_loop_17
Music_HoennRivalBattle_Ch3_loop_18:
	note D#, 2
	note G#, 2
	sound_loop 5, Music_HoennRivalBattle_Ch3_loop_18
	note A#, 2
	note G#, 2
	note D#, 2
	note G#, 2
	note D#, 2
	note G#, 2
	sound_loop 0, Music_HoennRivalBattle_Ch3_loop_main
 
Music_HoennRivalBattle_Ch3_branch_1:
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 4
	note C_, 2
	note F_, 2
	note C#, 2
	sound_ret
 
Music_HoennRivalBattle_Ch3_branch_2:
	note C_, 2
	note F_, 2
	note C_, 2
	note F_, 4
	note C_, 2
	note F_, 2
	octave 1
	note B_, 2
	octave 2
	sound_ret
 
Music_HoennRivalBattle_Ch4:
	toggle_noise $3
	drum_speed 12
	rest 16
	rest 12
	drum_note 1, 2
	drum_note 1, 2
Music_HoennRivalBattle_Ch4_loop_main:
Music_HoennRivalBattle_Ch4_loop_1:
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	sound_loop 22, Music_HoennRivalBattle_Ch4_loop_1
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 1, 2
	drum_note 4, 4
	drum_note 1, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 2
Music_HoennRivalBattle_Ch4_loop_2:
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 4
	drum_note 1, 2
	sound_loop 3, Music_HoennRivalBattle_Ch4_loop_2
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 1, 2
Music_HoennRivalBattle_Ch4_loop_3:
	drum_note 4, 4
	drum_note 1, 4
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 4
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 2
	sound_loop 4, Music_HoennRivalBattle_Ch4_loop_3
	drum_note 12, 4
Music_HoennRivalBattle_Ch4_loop_4:
	rest 16
	sound_loop 3, Music_HoennRivalBattle_Ch4_loop_4
	drum_note 1, 4
	drum_note 1, 4
	drum_note 1, 2
	drum_note 1, 2
	sound_loop 0, Music_HoennRivalBattle_Ch4_loop_main