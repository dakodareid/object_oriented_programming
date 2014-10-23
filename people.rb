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

instructor1 = Instructor.new
instructor1.name = "Chris"
instructor1.greeting
instructor1.teach

student1 = Student.new
student1.name = "Christina"
student1.greeting
student1.learn

# Below doesn't work because student1 is part of the Student class and the
# student class does not have the method 'teach' in its class. 
student1.teach
