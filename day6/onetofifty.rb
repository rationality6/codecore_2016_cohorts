require 'benchmark'

Benchmark.bm do |x|
    x.report do
        def recursion_add(i)
            if i == 5000
                ''
            else
                recursion_add(i + 1)
            end
        end
        recursion_add(1)
    end
end

Benchmark.bm do |x|
    x.report do
        for i in 1..5000
            ''
        end
    end
end
