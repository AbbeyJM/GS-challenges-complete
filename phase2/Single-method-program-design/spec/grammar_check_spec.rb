require 'grammar_check'

RSpec.describe 'grammar_check method' do

  context 'good grammar' do
    it'starts with capital and ends with punctation' do
      expect(grammar_check("Hello, world.")).to eq true
    end

    it'starts with capital and ends with punctation' do
      expect(grammar_check("Hello, world!")).to eq true
    end

    it'starts with capital and ends with punctation' do
      expect(grammar_check("Hello, world?")).to eq true
    end
  end

  context 'bad grammar' do
    it'starts with capital and ends with no punctation' do
      expect(grammar_check("Hello, world")).to eq false
    end

    it'starts with capital and ends with no punctation' do
      expect(grammar_check("hello, world!")).to eq false
    end

    it'starts with capital and ends with no punctation' do
      expect(grammar_check("hello, world")).to eq false
    end

  end
end
