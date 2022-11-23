class Text
  def initialize(diary)
    @diary = diary
    @numbers = []
   end

  def recallNumbers
    word = ""
    check_numbers = ("1234567890")
    @diary.each do |entry|
        words = entry.split(" ")
        words.each do |a|
            word = a.split("")
        end
        if (word.length == 11) && word.each { |char| char.include?(check_numbers)}
          @numbers << word.join("")
        end
    end
end

  def numbers
    @numbers
  end
end