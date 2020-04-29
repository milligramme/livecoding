live_loop :osc_a do
  use_real_time
  n, b, s = sync "/osc:127.0.0.1:57217/a"
  
  
  with_fx :bitcrusher, bits: b do
    sample :ambi_choir, beat_stretch: s, pitch: n
  end
  
end



