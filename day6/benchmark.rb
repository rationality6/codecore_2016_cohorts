require 'benchmark'

def recursion_add(n)
    if n >= 50
        0
    else
        n + recursion_add(n + 1)
    end
end

puts recursion_add(0)

Benchmark.bm do |x|
    x.report do

    end
end

puts 50.times{|x| x+=x}
