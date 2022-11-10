# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.


## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

name & method signature -> todo(text)
parameter -> text: a string
return value ->  a boolean

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

todo("#TODO")
# => true

todo("blabla#TODOblabla")
# => true


todo("#TODo")
# => false

todo("")
# => false

todo("hello")
# => false

todo("#TblaOblaDO")
# => false







_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
