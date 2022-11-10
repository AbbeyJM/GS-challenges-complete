def grammar_check(sentence)
  first_letter = sentence[0]
  last_letter = sentence[-1]
  punctuation = [".","?","!"]
  correct_ending = false
  punctuation.each { |l| correct_ending = true if last_letter == l }

  if first_letter == first_letter.upcase && correct_ending
    return true
  else
    return false
  end

  # Kay's way
  # fail "Not a sentence." if sentence.empty?
  # first_letter_is_uppercase = sentence[0] == sentence[0].upcase
  # last_character_is_valid = [".", "!", "?"].include? sentence[-1]
  # if first_letter_is_uppercase && last_character_is_valid
  #   return true
  # else
  #   return false
  # end

end
