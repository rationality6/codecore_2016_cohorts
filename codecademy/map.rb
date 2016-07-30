arr = ["tokyo", "london", "rio"]

print arr.each { |element| element.capitalize }
# => ["tokyo", "london", "rio"]

print arr.collect { |element| element.capitalize }
# => ["Tokyo", "London", "Rio"]

print arr.map { |element| element.capitalize }
# => ["Tokyo", "London", "Rio"]
