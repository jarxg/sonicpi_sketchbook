use_bpm 140

live_loop :vinyl do
  with_fx :reverb, room: 0.90 do
    # sample :vinyl_hiss, beat_stretch: 8
    sleep 8
  end
end

live_loop :industrial do
  with_fx :reverb, mix: 0.6, room: 0.90 do
    with_fx :bitcrusher do
      sample :loop_industrial, amp: 0.5, beat_stretch: 32
      sleep 32
    end
  end
end

live_loop :amen1 do
  with_fx :reverb, room: 1 do
    with_fx :slicer, pulse_width: 0.5, probability: 0.5, seed: rand_i(0..1000) do
      # sample :loop_amen, amp: 0.5, beat_stretch: 2
      sleep 2
    end
  end
end

live_loop :amen2 do
  with_fx :reverb, room: 1 do
    with_fx :slicer, pulse_width: 0.75, probability: 0.75, seed: rand_i(0..1000) do
      # sample :loop_amen_full, amp: 0.75, beat_stretch: 8
      sleep 8
    end
  end
end

live_loop :pad01 do
  with_fx :reverb do
    with_fx :echo do
      with_fx :lpf, cutoff: 75 do
        with_fx :distortion do
          use_synth :dark_ambience
          # play choose(scale(:A2, :bartok)), amp: 0.5, pan: -0.75, attack: 8, sustain: 24, release: 8
          # play choose(scale(:A3, :bartok)), amp: 0.5, pan: 0.75, attack: 8, sustain: 24, release: 8
          sleep 32
        end
      end
    end
  end
end

live_loop :pad02 do
  with_fx :reverb do
    with_fx :echo do
      with_fx :lpf, cutoff: 60 do
        with_fx :distortion, distort: 0.75 do
          use_synth :growl
          # play choose(scale(:A2, :bartok)), amp: 0.03, pan: rand(-1..1), attack: 16, sustain: 48, release: 16
          sleep rand_i(48..64)
        end
      end
    end
  end
end
