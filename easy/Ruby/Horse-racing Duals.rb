# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
data = []
$N = gets.to_i
$N.times do
    $Pi = gets.to_i
    data << $Pi
end
data.sort!
dif = 999
dif2 = 0
for i in 0...data.length-1
	dif2 = (data[i]-data[i+1])*-1
	if (dif > dif2)
		dif = dif2
	end
end
puts dif
