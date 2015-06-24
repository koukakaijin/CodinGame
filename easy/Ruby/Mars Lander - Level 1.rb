STDOUT.sync = true # DO NOT REMOVE

$N = gets.to_i # the number of points used to draw the surface of Mars.
$N.times do
    # LAND_X: X coordinate of a surface point. (0 to 6999)
    # LAND_Y: Y coordinate of a surface point. By linking all the points together in a sequential fashion, you form the surface of Mars.
    $LAND_X, $LAND_Y = gets.split(" ").collect {|x| x.to_i}
end

# game loop
loop do
    # HS: the horizontal speed (in m/s), can be negative.
    # VS: the vertical speed (in m/s), can be negative.
    # F: the quantity of remaining fuel in liters.
    # R: the rotation angle in degrees (-90 to 90).
    # P: the thrust power (0 to 4).
    $X, $Y, $HS, $VS, $F, $R, $P = gets.split(" ").collect {|x| x.to_i}
    if ($Y < 2250)
        puts $VS <=-40 ? "0 4" : "0 3"
    else
        puts "0 0"
    end
end
