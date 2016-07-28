var is_largest = function(array) {
    var max = 0
    for (var i = 0; i < array.length; i++) {
        if (array[i] > max) {
            max = array[i]
        }
    }
    return max
}

array_sample = [111, 2, 5, 21, 5, 6, 7, 99]

console.log(is_largest(array_sample));
