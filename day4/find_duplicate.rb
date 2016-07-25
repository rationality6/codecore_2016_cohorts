def many_array(n)
    numbers = []
    for i in 1..1_000_000
        numbers << i.to_s
    end
    # insert same number and return
    numbers << n.to_s
end

def find_with_hash(para)
    freq = Hash.new(0)
    para.each { |num| freq[num] += 1 }

    freq.each do |x, y|
        puts "#{x} is the duplicate number" if y >= 2
    end
end

def find_without_hash(para)
    para.detect { |e| para.count(e) > 1 }
    # print para
end

# run
# find_with_hash(many_array(3338))
puts find_without_hash(many_array(31))
