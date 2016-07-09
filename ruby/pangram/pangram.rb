class Pangram
	def self.is_pangram?(str)
		letters = ("a".."z").to_a
		letters.all? { |char| str.downcase.include?(char) } ? true : false
	end 
end 

class BookKeeping
	VERSION = 2
end 
