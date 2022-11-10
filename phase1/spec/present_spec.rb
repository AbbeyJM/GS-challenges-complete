require './lib/present.rb'

RSpec.describe Present do
    it "fails to unwrap" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end

    it "fails to wrap" do
        present = Present.new
        present.wrap("Ball")
        expect { present.wrap("Ball") }.to raise_error "A contents has already been wrapped."
    end

    it "wraps and unwraps" do
        present = Present.new
        present.wrap("log") 
        expect(present.unwrap).to eq ("log")
    end
end
