require "./lib/greet.rb"

describe 'greet' do
    it 'greets Matt' do
        expect(greet('Matt')).to eq "Hello, Matt!"
    end
end

