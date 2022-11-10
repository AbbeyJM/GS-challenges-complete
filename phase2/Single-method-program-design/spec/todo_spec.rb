require 'todo'

RSpec.describe 'todo method' do

  context '#TODO being passed' do
    it 'returns true when #TODO is passed' do
      expect(todo("#TODO")).to eq true
    end

    it 'returns true when #TODO is passed with text around it' do
      expect(todo("blabla#TODOblabla")).to eq true
    end



  end

  context '#TODO not being passed' do

    it 'returns false when hello is passed' do
      expect(todo("hello")).to eq false
    end

    it 'returns false when passed empty string' do
      expect(todo("")).to eq false
    end

    it 'returns false when wrong todo spelling is passed' do
      expect(todo("#TODo")).to eq false
    end

    it 'returns false when todo is passed with letters in between' do
      expect(todo("#TblaOblaDO")).to eq false
    end

  end

end
