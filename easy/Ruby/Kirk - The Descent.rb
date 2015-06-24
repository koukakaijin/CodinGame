STDOUT.sync = true # DO NOT REMOVE

b=0 # posicion
d=0 # direccion
# game loop
loop do
    $SX, $SY = gets.split(" ").collect {|x| x.to_i}
    a = Array.new
    8.times do
        $MH = gets.to_i # represents the height of one mountain, from 9 to 0. Mountain heights are provided from left to right.
        a << $MH
    end
    c = a.index(a.max)
    
    if d == 0
        puts c == b ? "FIRE" : "HOLD"
        b=b+1
    else
        puts c == b-1 ? "FIRE" : "HOLD"
        b=b-1
    end
    if (b == 8 || b == 0)
        d==0 ? d=1 : d=0 
    end
end
