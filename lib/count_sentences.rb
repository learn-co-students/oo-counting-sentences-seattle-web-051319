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
    thing = self.split(/\.|\?|!/)

    thing.delete("")
    thing.length
    #sent_array.length
    #binding.pry
  end
end
