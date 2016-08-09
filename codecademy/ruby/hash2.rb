def word_count
    some_text = 'I like my self hello self'
    text_split = some_text.split(' ')

    frequencies = Hash.new(0)

    text_split.each { |word| frequencies[word] += 1 }
    print frequencies, "\n"
    frequencies = frequencies.sort_by { |_type, many| many }

    frequencies.reverse!
    print frequencies, "\n"
end

word_count
