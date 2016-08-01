// function divisors(integer) {
//     for (var ans = [], i = 2; i < integer - 1; i++)
//         if (integer % i == 0) ans.push(i);
//     return ans.length > 0 ? ans : integer + " is prime";
// };

// ^ is the same as

function divisors(integer) {
    var ans = [];
    for (var i = 0; i < integer - 1; i++) {
        if (integer % i == 0) {
            ans.push(i);
        }
    }
    return ans.length > 2 ? ans : integer + " is prime";
    // return ans
}

console.log(divisors(8));
