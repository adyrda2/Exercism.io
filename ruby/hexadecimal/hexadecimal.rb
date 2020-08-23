class Hexadecimal
  attr_accessor :hexadecimal 
  
  def initialize(hexadecimal)
    @hexadecimal = hexadecimal.split("").reverse
  end 

  def values 
    { "0" => 0, "1" => 1, "2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9, "a"=>10, "b"=>11, "c"=>12, "d"=>13, "e"=>14, "f"=>15 }
  end 

  def to_decimal
    hexadecimal.each_with_index.map do |char, index|
    return 0 if values.keys.include?(char) == false
    16 ** index * values[char].to_i
    end.reduce(:+)
  end
end

