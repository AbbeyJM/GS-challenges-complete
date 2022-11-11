require 'task_tracker'

RSpec.describe 'task tracker method' do
  it "adds something to the todo" do 
   text = Todo.new
   expect(text.todo("Make the bed")).to eq "TODO: Make the bed"
   end

  it "adds something to the todo" do
   text = Todo.new
   expect(text.todo("Clean the car")).to eq "TODO: Clean the car"
   end

  it "lists the todo" do
   text = Todo.new
   text.todo("Clean the car")
   text.todo("Make the bed")
   expect(text.list).to eq "TODO: Clean the car /nTODO: Make the bed"
  end

  it "removes a task from todo" do
   text = Todo.new
   text.todo("Make the bed")
   expect(text.completed(1)).to eq nil
   end

  it "removes a task from a list" do
   text = Todo.new
   text.todo("Make the bed")
   text.todo("Hoover")
   expect(text.remove(2)).to eq "TODO: Make the bed"
  end
end
