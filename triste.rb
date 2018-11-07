use_debug false
use_bpm 120

live_loop :batida, delay: 8 do
  sample :drum_bass_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

use_synth :fm
use_synth_defaults sustain: 0.5
with_fx :distortion, distort: 0.7 ,mix: 0.7 do
  live_loop :baixo do
    play_pattern_timed [:b3, :b3, :b3, :b3],[0.5]
    play_pattern_timed [:a3, :r, :a3, :r],[0.5]
    play_pattern_timed [:e3, :e3, :e3, :e3],[0.5]
    play_pattern_timed [:e3, :r, :e3, :r],[0.5]
  end
end

use_synth :fm
use_synth_defaults sustain: 0.5
with_fx :distortion, distort: 0.3 ,mix: 0.7 do
  live_loop :baixo2, delay: 32.5 do
    play_pattern_timed [:b4, :d4, :fs4, :b3],[0.5]
    play_pattern_timed [:cs4, :r, :e4, :r],[0.5]
    play_pattern_timed [:g3, :b4, :g3, :b4],[0.5]
    play_pattern_timed [:e4, :r, :e4, :r],[0.5]
  end
end


use_synth :saw
use_synth_defaults sustain: 0.5
with_fx :distortion, distort: 0.7 ,mix: 0.7 do
  live_loop :melodia, delay: 65 do
    play_pattern_timed [:b3, :b3, :b3, :b3],[0.5]
    play_pattern_timed [:a3, :r, :a3, :r],[0.5]
    play_pattern_timed [:e3, :e3, :e3, :e3],[0.5]
    play_pattern_timed [:e3, :r, :e3, :r],[0.5]
  end
end

use_synth :saw
use_synth_defaults sustain: 1
use_octave 2
live_loop :melodia2, delay: 128.5 do
  play_pattern_timed [:b3, :b3, :b3, :b3],[0.5]
  play_pattern_timed [:a3, :r, :a3, :r],[0.5]
  play_pattern_timed [:e3, :e3, :e3, :e3],[0.5]
  play_pattern_timed [:e3, :r, :e3, :r],[0.5]
end
