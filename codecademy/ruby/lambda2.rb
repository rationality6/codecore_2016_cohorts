def batman_ironman_proc
    victor = proc { return 'Batman will win!' }
    puts victor.call
    'Iron Man will win!'
end

puts batman_ironman_proc

def batman_ironman_lambda
    victor = -> { return 'Batman will win!' }
    puts victor.call
    'Iron Man will win!'
end

puts batman_ironman_lambda
