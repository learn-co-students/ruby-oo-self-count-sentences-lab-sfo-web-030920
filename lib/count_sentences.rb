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
    # self represents string instance
    # is there a string?
    # check end_with to split string at period, question mark, exclamation point
    # if return true, split string by perod, ?, or ! => returns new array
    # then count number of elements in that new array
    
    if self.sentence? || self.question? || self.exclamation?
      self.split(/[.?!]+/).count
    else
      0
    end
  end

end
sent = String.new
