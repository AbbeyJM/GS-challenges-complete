require 'todo'

RSpec.describe "todo method" do
    it "returns true if #TODO is passed" do 
      expect(todo("#TODO")).to eq true 
  end
   it 'returns true if #TODO is passed' do
   expect(todo("wash the #TODO car")).to eq true
   end
   it 'returns false if an empty string is passed' do
    expect(todo("")).to eq false
   end
   it 'returns false if #TODO is split up' do
   expect(todo("was#T theO caDr O")).to eq false
  end
end
