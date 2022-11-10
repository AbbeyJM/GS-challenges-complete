require 'reading_time'

RSpec.describe "reading_time method" do

  dummy_text = "dummy "

  it "returns 0min if given no words" do
    expect(reading_time("")).to eq "0.0 minute reading time"
  end

  it "returns 1min if given 200 words" do
    expect(reading_time(dummy_text * 200)).to eq "1.0 minute reading time"
  end

  it "returns 6min if given 1200 words" do
    expect(reading_time(dummy_text * 1200)).to eq "6.0 minute reading time"
  end

  it "returns 0.5min if given 100 words" do
    expect(reading_time(dummy_text * 100)).to eq "0.5 minute reading time"
  end

  it "returns 400min if given 80 000 words" do
    expect(reading_time(dummy_text * 80000)).to eq "400.0 minute reading time"
  end


end
