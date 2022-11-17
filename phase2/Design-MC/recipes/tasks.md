1. Describe the problem

As a user
So that I can record my experiences
I want to keep a regular diary
=> .add (entry) Diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries
=> entry.all , calls on Diary listing entries.

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed
=> wpm, must be positive, .to_f.ceil
=> reading.time
=> new class

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary
=> todo array, held in Diary/new class 

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries
=> held in Diary, numbers. entries << numbers

2. Design the class system

Class Diary
- title, and contents 
- # all
- # todolist - calls todo

Class Todo(task)
# feeding into diary
- # add todos

Class text 
# taking from diary, and feeding into
- # number(digits) # adds numbers to entries returns nothing
- recall # pulls numbers from entries, search .include?[0..9]
# def has_digits?(str)
 # str.count("0-9") > 0
# end - from stackoverflow

Class entries
- # add (entry) @contents, @title
- # count words

Class return
# pulls on diary (refer to diary_entry.rb)
- # reading_time 
- reading_chunk, returns a chunk of text, best entry


3. examples as integration tests # the whole system to it, using parts from other .rbs
```ruby
# 1
diary = Diary.new
entry_1 = Entry.new("I'm sad")
entry_2 = Entry.new("I'm happy")
diary.add(entry_1)
diary.add(entry_2)
diary.all # => [entry_1, entry_2]

todo = Todo.new
task_1 = Task.new("dust")
task_2 = Task.new("hoover")
todo.add(task_1)
todo.add(task_2)
todo.todolist # => [task_1, task_2]

diary = Diary.new
digit_1 = Digit.new("I'm sad")
digit_2 = Digit.new("I'm happy")
diary.add(digit_1)
diary.add(digit_2)
diary.all # => [digit_1, digit_2]

diary = Diary.new
diary_entry_1 = DiaryEntry.new("I'm sad")
diary_entry_2 = DiaryEntry.new("i'm happy")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
expect(diary.count_words) # => 4

diary = Diary.new
diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
diary.add(diary_entry_1)
expect { diary.reading_time(0) } => "WPM must be positive."

diary = Diary.new
diary_entry_1 = DiaryEntry.new("I'm sad")
diary_entry_2 = DiaryEntry.new("I'm happy")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
expect(diary.reading_time(2)) => 2

diary = Diary.new
diary_entry_1 = DiaryEntry.new("I'm sad")
diary.add(diary_entry_1)
result = diary.find_best_entry_for_reading_time(2)
expect(result) => diary_entry_1
```



4. examples as unit tests # mainly focused on methods from single .rbs