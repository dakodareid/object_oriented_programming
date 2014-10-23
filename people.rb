class Student
	attr_accessor:name
	def learn
		puts "I get it!"
	end
end

class Instructor
	attr_accessor:name
	def teach
		puts "Everything in Ruby is an Object!"
	end
end

student = Student.new
instructor = Instructor.new
