class Reading
  def reading_time(wpm, time, diary) 
    @time = time
    @wpm = wpm
    @diary = diary
  end

  def reading_chunk  
    p @diary
  end
end