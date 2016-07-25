a = %w(A B C B A A B B B)
a.detect { |e| a.count(e) > 1 }
puts a.detect { |e| a.count(e) > 3 }
