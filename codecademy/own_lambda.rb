def lambda_test()
    lamb = -> { return 'foo' }
    puts lamb.call
    "foobar"
end

print lambda_test()
