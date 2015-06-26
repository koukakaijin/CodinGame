# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$N = gets.to_i # Number of elements which make up the association table.
$Q = gets.to_i # Number Q of file names to be analyzed.
files = []
types = Hash.new
$N.times do
    $EXT, $MT = gets.split(" ")
    if ($EXT.length <= 10 && $MT.length <= 50)
        types[$EXT.downcase] = $MT
    end
end
$Q.times do
    $FNAME = gets.chomp # One file name per line.
    if ($FNAME[$FNAME.length-1] == "." || $FNAME.length>256)
        files << "UNKNOWN"
    elsif $FNAME.include?"."
        if $FNAME.split(".").last().length > 10
            files << "UNKNOWN"
        else
            files << $FNAME.split(".").last()
        end
    else
        files << "UNKNOWN"
    end
end
#result
result = []
set = 1
for i in 0...files.length
    types.has_key?(files[i].downcase) ? result << types[files[i].downcase] :result << "UNKNOWN"
end
puts result
