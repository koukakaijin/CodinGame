# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.
array = []# letter indexes
rows = []
answer = ""
$L = gets.to_i
$H = gets.to_i
$T = gets.chomp
$T.upcase!
$T = $T.split(//)
for i in 0...$T.length
    ('A'..'Z').each_with_index do |letter, idx|
        if letter == $T[i]
            array.push(idx)
            break
        elsif ("Z" == letter)
            array.push(26)
        end
    end
end
$H.times do
    $ROW = gets.chomp
    for j in 0...array.length
        a = array[j]*$L
        b = a + $L-1
        answer = answer + $ROW[a..b]
    end
    rows << answer
    answer = ""
end
puts rows
