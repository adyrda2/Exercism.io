
class Hamming
  VERSION = 1
  def self.compute(string_one, string_two)
    if string_one.length != string_two.length 
      raise ArgumentError
    end 
      index = 0 
      counter = 0 
    while (string_one[index]) && (string_two[index])
      if string_one[index] != string_two[index]
	counter += 1 
      end 
      index +=1 
    end
    return counter 
  end 
end

#Refactored solution: 
class Hamming
  VERSION = 2
  def self.compute(string_one, string_two)
    raise ArgumentError if string_one.length != string_two.length
    index = 0
    counter = 0
  while (first = string_one[index]) && (second = string_two[index])
    counter += 1 if first != second
    index +=1
  end
  return counter
  end
end
