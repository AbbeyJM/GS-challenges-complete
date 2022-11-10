require "count_words"

# A method called count_words that takes a string as an argument 
# and returns the number of words in that string.

RSpec.describe "count_words method" do
  context "given an empty string" do
    it "returns an empty string" do
        result = count_words(" ")
        expect(result).to eq 0
    end
  end
  context "given a string" do
    it "returns the amount of words" do
      result = count_words("Hello world")
      expect(result).to eq 2
    end
  end
end
  
    