require_relative 'hello_world_test'
class HelloWorld
	def self.hello(name = "World")
		return "Hello, #{name}!"
	end 
end