require 'pry'

class String

  # "HI!".end_with?("!")
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
    arr = []
    arr = self.split
    i = 0
    total = 0
    while i < arr.length
      if arr[i].sentence? || arr[i].question? || arr[i].exclamation? 
        total += 1
      end
      i += 1
    end
    return total
  end
end