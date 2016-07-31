# def lambda_demo(a_lambda)
#   puts "I'm the method!"
#   a_lambda.call
# end
#
# lambda_demo(lambda { puts "I'm the lambda!" })

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]
# Write your code below this line!

symbolize = lambda{|x| x = x.to_sym}
symbolize = ->(x) { x = x.to_sym }

# Write your code above this line!
symbols = strings.collect(&symbolize)
print symbols
