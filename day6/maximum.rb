require 'benchmark'

array_fifty = []
5000.times { |i| array_fifty << i }

def maxium(array)
    array.max
end

def maxre

end

Benchmark.bm do |x|
    x.report do
        puts maxium(array_fifty)
    end
end

Benchmark.bm do |x|
    x.report do
        puts maxium(array_fifty)
    end
end
