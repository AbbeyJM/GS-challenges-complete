# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
# EXAMPLE

name & method signature -> reading_time(words)
parameter -> words: a string
return value -> time: a string

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_time("200 words")
# => 1 minute reading time

reading_time("0 words")
# => 0 minute reading time

reading_time("1200 words")
# => 6 minutes reading time

reading_time("100 words")
# => 0.5 minutes reading time

reading_time("80000 words")
# => 400 minutes reading time








_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
