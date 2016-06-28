class Binary 
  attr_accessor :number

  def initialize(number)
    @number = number
    raise ArgumentError unless valid_binary
  end 

  def to_binary  
    "0b" + number
  end 	

  def to_decimal
    Integer(to_binary)
  end 

private 

  def valid_binary 
    number.chars.all? {|x| x =~ /[01]/}
  end
end 

class BookKeeping 
  VERSION = 2 
end 


