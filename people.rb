class People
	attr_accessor:name

	def greeting
		puts "Hi, my name is #{name}"
	end
end


class Student < People
	def learn
		puts "I get it!"
	end
end

class Instructor < People
	def teach
		puts "Everything in Ruby is an Object!"
	end
end

student = Student.new
instructor = Instructor.new
