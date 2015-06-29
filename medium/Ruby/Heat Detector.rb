STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# W: width of the building.
# H: height of the building.
$W, $H = gets.split(" ").collect {|x| x.to_i}
STDERR.puts $W
STDERR.puts $H
$N = gets.to_i # maximum number of turns before game over.
$X0, $Y0 = gets.split(" ").collect {|x| x.to_i}

# game loop
class Batman
def initialize (x, y, w, h)
	@x = x;
    @y = y;
    @buildingX0 = 0;
    @buildingX1 = w -1;
    @buildingY0 = 0;
    @buildingY1 = h -1;
end
def U
        @buildingY1 = @y 
        @y -= ( ( @y - @buildingY0 ) / 2 ).round 
end
def R
        @buildingX0 = @x
        @x += ( (@buildingX1 - @x) / 2 ).round 
end
def D 
        @buildingY0 = @y
        @y +=  ( (@buildingY1 - @y) / 2 ).round 
end
def L
        @buildingX1 = @x
        @x -= ( (@x - @buildingX0) / 2).round 
end
def show
    puts "#{@x.to_i} #{@y.to_i}"
end
end
batman = Batman.new($X0.to_f, $Y0.to_f, $W.to_f, $H.to_f)
loop do
    $BOMB_DIR = gets.chomp # the direction of the bombs from batman's current location (U, UR, R, DR, D, DL, L or UL)
    if $BOMB_DIR.length == 2
		batman.send($BOMB_DIR[0])
		batman.send($BOMB_DIR[1])
	else
		batman.send($BOMB_DIR)
	end
	batman.show
end
