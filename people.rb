class People
	attr_accessor:name
end


class Student
	def learn
		puts "I get it!"
	end
end

class Instructor
	def teach
		puts "Everything in Ruby is an Object!"
	end
end

student = Student.new
instructor = Instructor.new
