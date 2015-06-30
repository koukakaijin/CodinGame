# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$LON = gets.chomp.gsub! ',','.'
$LAT = gets.chomp.gsub! ',','.'
$N = gets.to_i
final = Hash.new
$N.times do
    $DEFIB = gets.chomp.gsub! ',','.'
    data = $DEFIB.split(";")
    x = (data[4].to_f-$LON.to_f)*Math.cos((data[4].to_f+$LON.to_f)/2)
    y = (data[5].to_f-$LAT.to_f)
    d = Math.sqrt(x*x + y*y)*6371
    final[d] = data[1]
end
final = Hash[final.sort_by{|k,v| k}]
puts final.first.last
