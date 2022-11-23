class TodoList
    def initialize
        @todos = []
    end

    def add(todo)
        @todos << todo
    end

    def listTodo
        @todos
    end
end