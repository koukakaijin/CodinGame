STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# N: the total number of nodes in the level, including the gateways
# L: the number of links
# E: the number of exit gateways
$N, $L, $E = gets.split(" ").collect {|x| x.to_i}
links = []
gates = []
sever = []
other = []
cut = ""
$L.times do
    # N1: N1 and N2 defines a link between these nodes
    $N1, $N2 = gets.split(" ").collect {|x| x.to_i}
    links << "#$N1 #$N2"
end
$E.times do
    $EI = gets.to_i # the index of a gateway node
    gates << $EI
end
for i in 0...links.length
    for j in 0...gates.length
        if (links[i].split(" ").first==gates[j].to_s || links[i].split(" ").last==gates[j].to_s)
            sever << links[i]
        else
            other << links[i]
        end
    end
end
other.uniq!
other = other - sever
other.sort!
# game loop
loop do
    $SI = gets.to_i # The index of the node on which the Skynet agent is positioned this turn
    for i in 0...sever.length
        if (sever[i].split(" ").first.to_i==$SI || sever[i].split(" ").last.to_i==$SI)
            cut = i
            break
        end
    end
    if cut!=""
        puts sever[cut]
        sever.delete_at(cut)
        cut =""
    else
        if other.any?
            #need update!!
            puts other[0]
            other.shift
            other.shift
            other.shift
        else
        puts sever[0]
        sever.shift
        end
    end
end
