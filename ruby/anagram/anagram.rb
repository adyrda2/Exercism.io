class Anagram 

  def initialize(anagram)
    @anagram = anagram.downcase
  end 
	
  def match(words)
    anagrams = [] 
    words.each do |word|
      if word.downcase.split("").sort == @anagram.split("").sort
        anagrams << word unless word.downcase == @anagram 
	end 
      end
   anagrams
  end 
end 
