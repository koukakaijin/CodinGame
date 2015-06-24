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
    STDERR.puts c
    STDERR.puts b
    
    if d == 0
        if (c == b)
            puts "FIRE"
            b=b+1
        else
            puts "HOLD"
            b=b+1
        end
    else
        if (c == b-1)
            puts "FIRE"
            b=b-1
        else
            puts "HOLD"
            b=b-1
        end
    end
    if b == 8
        if d==0
            d=1
        else
            d=0
        end
    end
    if b == 0
        if d==0
            d=1
        else
            d=0
        end
    end
end
