STDOUT.sync = true # DO NOT REMOVE

$LX, $LY, $initialTX, $initialTY = gets.split(" ").collect {|x| x.to_i}
# game loop
loop do
    $E = gets.to_i # The level of Thor's remaining energy, representing the number of moves he can still make.
    x = $LX - $initialTX
    y = $LY - $initialTY
    j=y==0?"":y>0?"S":"N"
    x==0?x:x>0?j+="E":j+="W"
    x==0?x:x>0?$initialTX+=1:$initialTX-=1
    y==0?y:y>0?$initialTY+=1:$initialTY-=1
    puts j
end
