use_bpm 75

live_loop :pads01 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: 8 do
      use_synth :dark_ambience
      play chord(:Ds4, :minor), attack: 5, sustain: 10, release: 5
      sleep 15
      # play chord(:Cs4, :m7), attack: 5, sustain: 10, release: 5
      sleep 15
    end
  end
end

live_loop :pads02 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: 8 do
      use_synth :growl
      # play chord(:Ds3, :minor), amp: 0.25, attack: 10, sustain: 5, release: 5
      sleep 15
      # play chord(:Cs3, :m7), amp: 0.25, attack: 10, sustain: 5, release: 5
      sleep 15
    end
  end
end

live_loop :pads03 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :growl
      # play choose(chord(:Ds3, :minor)), amp: 0.25, attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
      # play choose(chord(:Cs3, :m7)), amp: 0.25, attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads04 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :dark_ambience
      # play choose(chord(:Ds4, :minor)), amp: 0.25, pan: rand(-1..1), attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
      # play choose(chord(:Cs4, :m7)), amp: 0.25, pan: rand(-1..1), attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads05 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :dark_ambience
      # play choose(chord(:Ds5, :minor)), amp: 0.25, pan: rand(-1..1), attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
      # play choose(chord(:Cs5, :m7)), amp: 0.25, pan: rand(-1..1), attack: 10, sustain: rand_i(10..30), release: 10
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads06 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :dark_ambience
      # play choose(chord(:As5, :minor)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
      # # play choose(chord(:Bs5, :m7)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads07 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :dark_ambience
      # play choose(chord(:As2, :minor)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
      # play choose(chord(:Bs2, :m7)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads08 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :growl
      # play choose(chord(:As3, :minor)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
      # play choose(chord(:Bs3, :m7)), amp: 0.25, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
    end
  end
end

live_loop :pads09 do
  with_fx :reverb, room: 1 do
    with_fx :echo, phase: 1, decay: rand_i(1..10) do
      use_synth :sine
      # play choose(chord(:As6, :minor)), amp: 0.015, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
      # play choose(chord(:Bs6, :m7)), amp: 0.015, pan: rand(-1..1), attack: rand_i(10..20), sustain: rand_i(10..30), release: rand_i(10..20)
      sleep rand_i(10..50)
    end
  end
end

live_loop :clicks do
  with_fx :reverb, room: 1, damp: 0.8 do
    with_fx :echo, decay: 8 do
      use_synth :dpulse
      # play choose(scale(:Ds6, :minor)), amp: 0.025, attack: 0, release: 0.1, pan: rand(-1..1)
      sleep rand_i(1..5)
    end
  end
end
end
