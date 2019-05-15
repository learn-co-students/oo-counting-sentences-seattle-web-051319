require 'pry'

class String

  def sentence?
    return self[self.length - 1] == '.'
  end

  def question?
    return self[self.length - 1] == '?'
  end

  def exclamation?
    return self[self.length - 1] == '!'
  end

  def count_sentences
  self.split(/\.|\?|\!/).delete_if {|sent| sent.size < 2}.count
  end
  
end