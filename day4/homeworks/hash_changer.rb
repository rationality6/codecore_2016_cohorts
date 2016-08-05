array = [{ a: 1 }, { a: 2 }, { a: '3' }, { b: 2 }, { c: 3 }]

def pluck(n, val)
    n.each do |x, _y|
        x.each do |a, b|
            p b if val == a
            p nil if val != a
        end
    end
end

def pluck2(n, val)
    for z in n
        for x, y in z
            p y if val == x
            p nil if val != x
        end
    end
end

pluck(array, 'a'.to_sym)
pluck2(array, 'a'.to_sym)
