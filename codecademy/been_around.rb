odds_n_ends = [:weezard, 42, 'Trady Blix', 3, true, 19, 12.345]

# is_int = -> (n){n=n.is_a? Integer}
#
# ints = odds_n_ends.select(&is_int)
#
# print ints

print ints = odds_n_ends.select { |x| x.is_a? Integer }
