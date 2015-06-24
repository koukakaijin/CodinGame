STDOUT.sync = true # DO NOT REMOVE

$LX, $LY, $initialTX, $initialTY = gets.split(" ").collect {|x| x.to_i}
# game loop
loop do
    $E = gets.to_i # The level of Thor's remaining energy, representing the number of moves he can still make.

    x = $LX - $initialTX
    y = $LY - $initialTY
    
    if (x>0 && y>0) 
        puts "SE"
        $initialTY=$initialTY+1
        $initialTX=$initialTX+1
    elsif (x>0 && y<0) 
        puts "NE"
        $initialTY=$initialTY-1
        $initialTX=$initialTX+1
    elsif (x>0 && y==0) 
        puts "E"
        $initialTX=$initialTX+1
    elsif (x<0 && y>0)
        puts "SW"
        $initialTY=$initialTY+1
        $initialTX=$initialTX-1
    elsif (x<0 && y<0) 
        puts "NW"
        $initialTY=$initialTY-1
        $initialTX=$initialTX-1
    elsif (x<0 && y==0) 
        puts "W"
        $initialTX=$initialTX-1
    elsif (x==0 && y>0) 
        puts "S"
        $initialTY=$initialTY+1
    elsif (x==0 && y<0) 
        puts "N"
        $initialTY=$initialTY-1
    end
end
