require './lib/check_codeword.rb'

describe 'check_codeword' do
    it 'Lets you in if you input "horse"' do
        expect(check_codeword("horse")).to eq "Correct! Come in."
    end
end

describe 'check codeword' do
    it 'Gives you a clue if you get the first 2 characters correct' do
        expect(check_codeword("hope")).to eq "Close, but nope."
    end
end

describe 'check_ codeword' do
    it 'Returns "WRONG!" if codeword is incorrect' do
        expect(check_codeword("umbongiodf")).to eq "WRONG!"
    end
end