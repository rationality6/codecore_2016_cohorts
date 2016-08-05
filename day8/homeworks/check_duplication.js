var arr = [12, 9, 9, 111, 2, 3, 4, 4, 5, 7, 12];
var sorted_arr = arr.slice().sort();

// You can define the comparing function here.
// JS by default uses a crappy string compare.
// (we use slice to clone the array so the
// original array won't be modified)

console.log(sorted_arr);

var results = [];
for (var i = 0; i < arr.length - 1; i++) {
    if (sorted_arr[i + 1] == sorted_arr[i]) {
        results.push(sorted_arr[i]);
    }
}

// alert(results);
console.log(results);
