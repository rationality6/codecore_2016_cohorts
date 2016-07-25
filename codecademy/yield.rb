def block_test
    puts 'This is first'
    yield
    puts 'This is the last'
end

block_test { puts 'foo' }
