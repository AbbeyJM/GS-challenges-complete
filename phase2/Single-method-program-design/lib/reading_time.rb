def reading_time(words)
  time = words.split(" ").size.to_f / 200
  return "#{time} minute reading time"

  # Kay's way
  # w = words.split(" ")
  # return(words.length / 200.to_f).ceil

end
