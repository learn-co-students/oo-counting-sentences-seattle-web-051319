require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # split sentence by spaces
    words = self.split(" ")
    # check each element for ., ?, or ! at the end
    # if a check returns true, included in count
    is_last_word = words.collect {|word| word.end_with?(".", "?", "!")}
    is_last_word.count(true)
  end
end