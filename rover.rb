class Rover

	attr_accessor :x, :y, :direction

	# DIRECTIONS = %w(N E S W)
	# NORTH = 0
	# EAST = 1
	# SOUTH = 2
	# WEST = 3

	def initialize(x,y,direction)
		@x = x
		@y = y
		@direction = direction
	end

	def move
		if @direction == "N"
			@y += 1
		elsif @direction == "E"
			@x += 1
		elsif @direction == "S"
			@y -= 1
		elsif @direction == "W"
			@x -= 1
		end
	end

	def turn_right
		if @direction == "N"
			@direction = "E"
		elsif @direction == "S"
			@direction = "W"
		elsif direction == "E"
			@direction = "S"
		elsif direction == "W"
			@direction = "N"
		end
		# @direction = (@direction + 1) % 4
		# self
	end
	
	def turn_left
		if @direction == "N"
			@direction = "W"
		elsif @direction == "S"
			@direction = "E"
		elsif direction == "E"
			@direction = "N"
		elsif direction == "W"
			@direction = "S"
		end
		# @direction = (@direction - 1) % 4
		# self
	end

	def to_s
		"#{@x}, #{@y}, #{@direction}"
	end
end