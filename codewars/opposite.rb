def opposite(n)
    if n > 0
        return "-#{n}".to_f
    else
        return n.abs.to_f
  end
end

# puts opposite(5)
# puts opposite(-5)
# puts opposite(-1)
# puts opposite(1)
# puts opposite(0)

def opposite2 n
  -n
end


puts opposite2(5)
puts opposite2(-5)
puts opposite2(-1)
puts opposite2(1)
puts opposite2(0)
