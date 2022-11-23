class Diary
  def initialize
    @entries = []
   #@todo
  end

  def add(entry)
    @entries.push(entry.showEntries)
  end

  def readAll
     @entries
  end

  def readDiary(wpm, time)
    if @entries.reject {|entry| entry.split(' ').length < (wpm * time) }

   else @entries.accept {|entry| entry.countsplit(' ').length < (wpm * time) }
   end
   @entries.max
  end
end