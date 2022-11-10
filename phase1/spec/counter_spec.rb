require "counter.rb"

RSpec.describe Counter do
    counter = Counter.new()
    it "initializes new " do
        result = counter.report()
        expect(result).to eq "Counted to 0 so far."
    end
    
    it "adds 10 to counter" do
        counter.add(10)
        expect(counter.report).to eq "Counted to 10 so far."
    end
end
  