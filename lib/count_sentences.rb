require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    split_period = self.split(".")
    split_question = split_period.join.split("?")
    split_exclaim = split_question.join.split("!").compact.count
    total = 0 
  end

end
