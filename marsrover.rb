class Rover

	attr_accessor :x, :y, :direction

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction

	end

	def read_instruction(instruction)
		if instruction == "M"
			move 
		elsif instruction == "L"
			turn_left
		elsif instruction == "R"
			turn_right		
		elsif instruction == "EXIT"
			close_app
		end
	end

	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "W"
			@direction = "S"
		elsif @direction == "S"
			@direction = "E"
		elsif @direction == "E"
			@direction = "N"
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "W"
			@direction = "N"
		elsif @direction == "S"
			@direction = "W"
		elsif @direction == "E"
			@direction = "S"
		end
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "W"
			@x -= 1
		end		
	end

	def close_app
		puts "See ya!"
		exit
	end

end

rover = Rover.new(0,0,"N")

#Starting Position
puts "Rover's STARTING position is #{rover.x}, #{rover.y}, facing #{rover.direction}."

puts "Whats your first move? (L, R or M)"

while true
	rover.read_instruction(gets.chomp.upcase)
	puts "Rover's current position is now #{rover.x}, #{rover.y}, facing #{rover.direction}."
	puts "Whats your next move? (L, R, M, or exit to quit)"
end
