var is_prime = function(n) {
    divided = []
    is_prime = false
    for (var i = 1; i <= n; i++) {
        if (n % i === 0) {
            divided.push(i)
        }
    }
    console.log(divided);
    if (divided.length <= 2) {
        is_prime = true
    }
    return is_prime
}

console.log(is_prime(4));
