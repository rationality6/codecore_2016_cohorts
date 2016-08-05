require "benchmark"

array = [34, 24, 45]

Benchmark.bm do |x|
  x.report do
    30_000_000.times do
      number = array.delete_at(3)
      array.insert(2, number)
    end
  end
end

Benchmark.bm do |x|
  x.report do
    30_000_000.times do
      temp     = array[2]
      array[2] = array[3]
      array[3] = temp
    end
  end
end

Benchmark.bm do |x|
  x.report do
    30_000_000.times do
      array[2], array[3] = array[3], array[2]
    end
  end
end
