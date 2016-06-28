class Complement 
  VERSION = 3
    def self.of_dna(letter)
      split_chars = letter.split("")
      split_chars.map do |character| 
	case character
	  when "A"
	    character.replace("U")
	  when "C"
	    character.replace("G")
	  when "T"
	    character.replace("A")
	  when "G"
	    character.replace("C")
	  else raise ArgumentError
	    end 
	  end 
      return split_chars.join("")
    end 
end 
