live_loop :osc_a do
  use_real_time
  sync "/osc:127.0.0.1:65384/a"
  sample :loop_3d_printer, rate: 2
end



