require "benchmark"

def max_loop(array)
  hold=0
  array.each do |x|
    if x>hold
    hold=x
    end
  end
   hold
end


def max_recursive(array)
  @hold = 0
  def recursor(array)
    if array.length > 0
      recursor(array[1..-1])
      @hold = array[0] if array[0] > @hold
    end
  end
  recursor(array)
  @hold
end

p max_loop([24,6,77,23])
p max_recursive([24,6,77,23])

Benchmark.bm do |x|
  x.report do
  1_000_000.times {max_loop([24,6,77,23])}
  end

  x.report do
  1_000_000.times {max_recursive([24,6,77,23])}
  end
end
