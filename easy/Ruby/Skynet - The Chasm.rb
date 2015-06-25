STDOUT.sync = true # DO NOT REMOVE

$R = gets.to_i # the length of the road before the gap.
$G = gets.to_i # the length of the gap.
$L = gets.to_i # the length of the landing platform.
a = false
# game loop
loop do
    $S = gets.to_i # the motorbike's speed.
    $X = gets.to_i # the position on the road of the motorbike.
    
    if a
        puts "SLOW"
    elsif (($R-$X)<$S)
        puts "JUMP"
        a = true
    elsif ($G >= $S)
        puts "SPEED"
    elsif ($G+1 < $S)
        puts "SLOW"
    else
        puts "WAIT"    
    end
end
