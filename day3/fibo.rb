require 'benchmark'

def fibo_swap(n)
    a = 1
    b = 1
    array_list = []
    while a < n
        array_list << a
        a, b = b, a + b
    end
    array_list
end


def fibo(n)
    a = 1
    b = 1
    array_list = []
    while a < n
        array_list << a
        temp = a
        a = b
        b = temp + b
    end
    array_list
end


Benchmark.bm do |x|
    x.report do
        1_000_000.times do
            fibo_swap(1000)
        end
    end
end

Benchmark.bm do |x|
    x.report do
        1_000_000.times do
            fibo(1000)
        end
    end
end
