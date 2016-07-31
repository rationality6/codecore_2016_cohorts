// function divisors(integer) {
//     for (var ans = [], i = 2; i < integer - 1; i++)
//         if (integer % i == 0) ans.push(i);
//     return ans.length > 0 ? ans : integer + " is prime";
// };
//
//
// console.log(divisors(99));
// // ^ is the same as
//
// function divisors(integer) {
//     var ans = [];
//     for (var i = 0; i < integer - 1; i++) {
//         if (integer % i == 0) {
//             ans.push(i);
//         }
//     }
//     ans.length > 0 ? ans : integer + " is prime";
//     return ans
// }


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
