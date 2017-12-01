live_loop :sinesg do
  with_fx :gverb do
    with_fx :echo, phase: 0.5, decay: 8 do
      use_synth :sine
      play choose(scale(:B4, :whole_tone)), amp: 0.05, pan: rand(-1..1), attack: 2, sustain: rand_i(0..10), relase: 2
      sleep rand_i(5..15)
    end
  end
end

live_loop :pad01 do
  with_fx :reverb do
    with_fx :echo, phase: 2, decay: 10 do
      with_fx :bitcrusher do
        use_synth :chipbass
        # play choose(scale(:B2, :whole_tone)), amp: 0.05, pan: rand(-1..1), attack: 2, sustain: rand_i(0..10), relase: 2
        sleep rand_i(1..10)
      end
    end
  end
end

live_loop :pad02 do
  with_fx :reverb do
    with_fx :echo, phase: 2, decay: 10 do
      with_fx :distortion do
        use_synth :dark_ambience
        # play choose(scale(:B1, :whole_tone)), amp: 0.1, pan: rand(-1..1), attack: 2, sustain: rand_i(0..20), relase: 2
        sleep rand_i(1..10)
      end
    end
  end
end

live_loop :pad03 do
  with_fx :reverb do
    with_fx :echo, phase: 2, decay: 10 do
      with_fx :flanger do
        with_fx :distortion do
          use_synth :growl
          # play choose(scale(:B3, :whole_tone)), amp: 0.05, pan: rand(-1..1), attack: 2, sustain: rand_i(0..10), relase: 2
          sleep rand_i(1..10)
        end
      end
    end
  end
end

live_loop :pad04 do
  with_fx :reverb do
    with_fx :echo, phase: 2, decay: 10 do
      with_fx :flanger do
        with_fx :distortion do
          use_synth :dark_ambience
          # play choose(scale(:B1, :whole_tone)), amp: 0.2, pan: rand(-1..1), attack: 2, sustain: rand_i(0..10), relase: 2
          sleep rand_i(1..10)
        end
      end
    end
  end
end

live_loop :lead do
  with_fx :reverb do
    with_fx :echo, phase: 2, decay: 10 do
      with_fx :flanger do
        with_fx :distortion, distort: 0.9 do
          use_synth :saw
          # play choose(scale(:D, :whole_tone)), amp: 0.02, pan: rand(-1..1), attack: rand_i(0..5), sustain: rand_i(0..10), relase: rand_i(0..5)
          sleep rand_i(1..20)
        end
      end
    end
  end
end
