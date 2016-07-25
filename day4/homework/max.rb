# stext = gets.chomp.split('')
text = 'oweaijfoaiwefjewaiofj sjaaaaa'
text = text.split('')
freq = Hash.new(0)
text.each { |l| freq[l] += 1 }
p freq.max_by { |_x, y| y }
