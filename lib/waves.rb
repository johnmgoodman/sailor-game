def update
  @iteration += 1
  if (@iteration%50<25)
    @wave_offset=1
  else
    @wave_offset=0
  end
end
    
  def draw
    jj=0
    loop do
      y_position_wave = jj*20
      
      @wave1_image.draw(
        @wave_offset*5-10,
        y_position_wave,
        0,
        0.10, 0.10
      )
      @wave2_image.draw(
        0,
        y_position_wave+5,
        0,
        0.10, 0.10
      )
      @wave3_image.draw(
        -@wave_offset*6,
        y_position_wave+10,
        0,
        0.10, 0.10
      )
      @wave2_image.draw(
        0,
        y_position_wave+15,
        0,
        0.10, 0.10
      )
      
      if jj==20
        break
      end
      jj+=1
    end
  end