# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class interface

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE
text = string, containing the task
"#TODO".join(" ") = calls the joined array
Text.new[] - an array we add text to


class Todo
def inititalize 
@todo = []
end 
 
def todo(text)
# this adds stuff to todo array
end 

def list
@todo.each do |todo| 
puts "TODO: #{todo}"
end

def completed(user_input)
new_list = @todo
new_list = new_list.delete_at(user_input - 1)
puts new_list

def 

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

#adding 
text = Todo.new
expect(text.todo("Make the bed")).to eq "Make the bed"
end

text = Todo.new
expect(text.todo("Clean the car")).to eq "Clean the car"
end

#list
text = Todo.new
text.todo("Clean the car")
text.todo("Make the bed")
expect(text.list).to eq "TODO: Clean the car /nTODO: Make the bed"

#removing
text = Todo.new
text.todo("Make the bed")
expect(text.completed(1)).to eq ""

text = Todo.new
text.todo("Make the bed")
text.todo("Hoover")
expect(text.completed(2)).to eq "TODO: Make the bed"







```




_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

#puts "TODO: @todo.join(", ")"