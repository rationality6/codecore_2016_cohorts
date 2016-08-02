def group_check(s)

    hash_symbols = {
        '(':')',
        '{':'}',
        '[':']'
    }

    splited_array = s.split("")
    stack = []
    for i in splited_array
        if i == '('
            stack << hash_symbols[:'(']
        end
    end
    print stack
end

group_check('({})')

rr = [1,'jan'] => "January"
p rr
