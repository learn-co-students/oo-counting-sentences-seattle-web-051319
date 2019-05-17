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
    split_period = self.split(".").compact.reject{|a|a ==""}
    split_question = self.split("?").compact.reject{|a|a ==""}
    split_exclaim = self.split("!").compact.reject{|a|a ==""}
    total = 0
    total += split_period.count
    if split_question.count > 1
      total += split_question.count - 1
    end
    if split_exclaim.count > 1
      total += split_exclaim.count - 1
    end
    total
  end

end
