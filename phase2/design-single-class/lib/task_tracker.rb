class Todo
    def initialize 
    @todo = []
    end 
     
    def todo(text)
    # this adds stuff to todo array 
      @todo.push("TODO: #{text}").join
    end 
    
    def list
      return @todo.join(" /n")
    end 
    
    def completed(user_input)
      new_list = @todo.delete_at(user_input - 1)
      puts new_list
    end

    def remove(user_input)
        @todo.delete_at(user_input - 2)
      end
end