multiples_of_3 = proc { |n| n % 5 == 0 }
cs = (1..100).to_a.select(&multiples_of_3)
print cs
