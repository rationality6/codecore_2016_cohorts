require 'benchmark'

def recursion_add(n)
    if n >= 50
        0
    else
        n + recursion_add(n + 1)
    end
end

def adding
    arrays = 50.times.to_a
    result = 0
    arrays.each { |x| result += x }
    result
end

Benchmark.bm do |x|
    x.report do
        recursion_add(0)
    end
    x.report do
        adding
    end
end
