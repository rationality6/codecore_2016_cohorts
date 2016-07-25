def make_cards
    card_symbols = %w(c d h s)
    card_numbers = %w(A 2 3 4 5 6 7 8 9 T J Q K)
    card_score = 0
    card_deck = {}
    for i in card_symbols
        for j in card_numbers
            card_deck["#{j}#{i}"] = card_score
            card_score += 1
        end
    end
    card_deck
end

def encoder(array)
    cards = make_cards
    card_list = []
    for j in array
        card_list << cards[j]
    end
    card_list.sort { |x, y| x <=> y }
end

def decoder(array)
    cards = make_cards
    card_list = []
    card_list_key = []
    for i in array
        card_list << cards.select{|x,y| y == i}
    end
    for x in card_list
        x.each{|x,y| card_list_key << x}
    end
    card_list_key
end

demo_encoding_array = %w(Ac Ks 5h Td 3c)
demo_encoding_array1 = %w(Ac Ks 2h Td 2c)
print encoder(demo_encoding_array), "\n"
print encoder(demo_encoding_array1), "\n"

demo_decoding_array = [0, 51, 30, 22, 2]
demo_decoding_array1 = [0, 21, 20, 22, 2]
print decoder(demo_decoding_array), "\n"
print decoder(demo_decoding_array1), "\n"
