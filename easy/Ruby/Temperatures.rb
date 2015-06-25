# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$N = gets.to_i # the number of temperatures to analyse
$TEMPS = gets.chomp # the N temperatures expressed as integers ranging from -273 to 5526

if $N == 0
    puts 0
else
    a = $TEMPS.split(" ")
    b=a.map { |x| x.to_i }
    a.map! { |x| x.to_i.abs }.sort!
    puts (b.include? a[0]) ? a[0] :(a[0].to_i*-1)
end
