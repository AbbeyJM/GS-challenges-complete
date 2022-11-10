require 'extract_uppercase'

RSpec.describe "extract_uppercase method" do

  it "returns an empty string if given empty string" do
    expect(extract_uppercase("")).to eq []
  end

  it "returns an empty string if given string without uppercase word" do
    expect(extract_uppercase("hello world")).to eq []
  end

  it "returns the uppercase words from string" do
    expect(extract_uppercase("hello WORLD")).to eq ["WORLD"]
  end

  it "do not extract mixed case words" do
    expect(extract_uppercase("hElLo WorlD")).to eq []
  end

  it "ignores and strip punctuation" do
    expect(extract_uppercase("HELLO! WORLD;")).to eq ["HELLO", "WORLD"]
  end



end
