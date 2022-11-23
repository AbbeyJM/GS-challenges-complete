require 'Diary_entry'

RSpec.describe DiaryEntry do
    it 'returns a single entry when a single one given' do
        entry = DiaryEntry.new("This is a new entry.")
        expect(entry.showEntries).to eq "This is a new entry."
    end
end