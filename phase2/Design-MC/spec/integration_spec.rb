require 'Diary_entry'
require 'Diary'
require 'Reading'
require 'Text'
require 'Todo'
require 'TodoList'

RSpec.describe 'integeration' do
    context 'creating entries, adding to diary' do
        it 'returns 1 diary entry when given 1 string' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("I'm sad")
            diary.add(entry_1)
            expect(diary.readAll).to eq ["I'm sad"
        end

        it "returns all diary entries when given multiples" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("I'm sad")
            entry_2 = DiaryEntry.new("I'm happy")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.readAll).to eq ["I'm sad", "I'm happy"]
        end
    end

    context 'returns diary entry for time given' do
        it ' returns entry' do
            diary = Diary.new
            entry = DiaryEntry.new("i'm very sad")
            diary .add(entry)
            expect(diary.readDiary(1, 3)).to eq "i'm very sad"
        end

        it 'returns multiple entries for time given' do
            diary = Diary.new
            entry_1 = DiaryEntry.new("i'm very sad")
            entry_2 = DiaryEntry.new("i'm very happy to be here but")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.readDiary(15, 1)).to eq "i'm very happy to be here but i'm very sad"
        end
    end

    context 'returns numbers in array' do
        it 'returns one number when given one number' do
            diary = Diary.new
            entry = DiaryEntry.new("i'm sad 07789443321")
            diary.add(entry)
            entry_1 = DiaryEntry.new("happy 07332285942")
            diary.add(entry_1)
            contacts = Text.new(diary.readDiary)
            contacts.recallNumbers
            expect(contacts.numbers).to eq ["07789443321", "07332285942"]
        end

        it 'returns an empty array when no valid numbers given' do
            diary = Diary.new
            entry = DiaryEntry.new("i'm sad 007")
            diary.add(entry)
            contacts = Text.new(diary.readDiary)
            contacts.recallNumbers
            expect(contacts.numbers).to eq []
        end
    end

    context 'returns list of todos in an array' do
        it 'returns a single todo' do
            todoslist = TodoList.new
            todos = Todo.new("make the bed")
            todoslist.add(todos.showList)
            expect(todoslist.listTodo).to eq ["make the bed"]
        end

        it 'returns multiple todos' do
            todoslist = TodoList.new
            todos_1 = Todo.new("make the bed")
            todoslist.add(todos_1.showList)
            todos_2 = Todo.new("mop the floor")
            todoslist.add(todos_2.showList)
            expect(todoslist.listTodo).to eq ["make the bed", "mop the floor"]
        end
    end
end
end