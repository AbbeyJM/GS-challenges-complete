# File: lib/diary.rb
class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    # Returns a list of instances of DiaryEntry
    return @entries
  end

  def count_words
    # Returns the number of words in all diary entries
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "WPM must be positive." unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time <= minutes
    end
    sorted_by_longest = readable_entries.sort_by do |entry|
      entry.count_words
    end
    sorted_by_longest.last
  end
end
