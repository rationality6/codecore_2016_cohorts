hash = { a: '123', b: '345', c: '678', d: '910' }

list = []
for a, b in hash
    list << "#{a}#{b}"
end

p list
