require './rover'

class Commander
	attr_accessor :rover

	def create_rover(starting_point)
		coords = starting_point.split(" ")
		@rover = Rover.new(coords[0].to_i, coords[1].to_i, coords[2])
	end

	def move_rover(move_command)
		move_command.split("").each do |c|
			if c == "L"
				@rover.turn_left
			elsif c == "R"
				@rover.turn_right
			elsif c == "M"
				@rover.move
			end
		end
	end 
end

command =  Commander.new
done = "n"
puts "Grid size: "
grid_size = gets.chomp  #irrelevant doe

while done == "n"
	puts "Please input rover's starting coordinates and direction in form (X Y D): "
	rov_coords = gets.chomp

	puts "Please input movement commands: "
	comms = gets.chomp

	command = Commander.new
	command.create_rover(rov_coords)
  command.move_rover(comms)

	puts "the x coordinate of the rover is: #{command.rover.x}"
	puts "the y coordinate of the rover is: #{command.rover.y}"
	puts "the direction of the rover is: #{command.rover.direction}"

	puts "Are you finished? (y/n): "
	done = gets.chomp
end
puts "YEEEE"

#put ending coords
#end
