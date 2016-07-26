require 'benchmark'

def sum(a)
    if n<0
        0
    end
    a + sum(a - 1)
end

puts sum(50)

Benchmark.bm do |x|
    x.report do
        51.times { |i| i }
    end
end

Benchmark.bm do |x|
    x.report do

    end
end
