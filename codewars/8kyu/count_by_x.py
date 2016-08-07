def count_by(x, n):
    """
    Return a sequence of numbers counting by `x` `n` times.
    """
    array = []
    for i in range(n):
        array.append((i+1)*x)
    return array

# print count_by(1,5)


def count_by(x, n):
    """
    Return a sequence of numbers counting by `x` `n` times.
    """
    return range(x, x * n + 1, x)

print count_by(2,5)
