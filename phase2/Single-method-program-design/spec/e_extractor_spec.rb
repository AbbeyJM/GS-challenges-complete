require "e_extractor"

RSpec.describe "e_extractor method" do

  it "given an empty string returns an empty string" do
    result = e_extractor("")
    expect(result). to eq ""
  end

  it "given a string without an e in it, returns the same" do
    result = e_extractor("asdlkajdlakjda")
    expect(result).to eq "asdlkajdlakjda"
  end

  it "given a string with an e in it, brings the e to the start" do
    result = e_extractor("hello")
    expect(result).to eq "ehllo"
  end

  it "given a string with mutliple e in it, brings them to the start" do
    result = e_extractor("heello")
    expect(result).to eq "eehllo"
  end
end
