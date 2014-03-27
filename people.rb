class Person
	def initialize(name)
		@name = name
	end

	def greeting
		puts "Hi, my names is #{name}"
	end
end

class Student
	include Person
	
	def learn
		puts "I get it!"
	end
end


class Instructor
	include Person

	def teach
		puts "Everything in Ruby is an Object"
	end 

end

p1 = Instructor.new("Chris")
puts p1.greeting 

