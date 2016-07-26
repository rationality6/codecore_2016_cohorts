def reverse(string)
    if string.empty?
        ''
    else
        string[-1] + reverse(string[0..-2])
    end
end

def reverse(s)
    if s.empty?
        ''
    else
        s[-1] + reverse(s[0..-2])
    end
end

print reverse('asdfghjkl')
