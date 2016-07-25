bc_cities_population = { vancouver: 2_135_201, victoria:  316_327, abbotsford: 149_855,
                         kelowna: 141_767, nanaimo:  88_799, white_rock: 82_368, kamloops: 73_472, chilliwack: 66_382 }

def divided(a)
    a.each { |_x, y| puts(y / 1000).to_s }
end

divided(bc_cities_population)
