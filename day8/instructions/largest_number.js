array1 = [9, 2, 11, 4, 5, 6, 7, 8, 9, 900]

var largestNumber = function(array) {
    max = 0
    for (var i = 0; i < array.length; i++) {
        if (array[i] > max) {
            max = array[i]
        }
    }
    return max
}
console.log(largestNumber(array1));
