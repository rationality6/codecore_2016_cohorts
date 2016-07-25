text = 'I like my self self my hello'
words = text.split(' ')
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }

frequencies = frequencies.sort_by do |_type, many|
    many
end
frequencies.reverse!

print frequencies, "\n"

frequencies.each do |word, many|
    frequencies[word] = many
end

print frequencies
