require 'Todo'

RSpec.describe Todo do
  it 'returns a task when given one entry' do
    todos = Todo.new("make the bed.")
    expect(todos.showList).to eq "make the bed."
  end
end