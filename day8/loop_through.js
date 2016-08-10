var printMulti = function(array) {
    result_array = []
    for (var i = 0; i < array.length; i++) {
        for (var j = 0; j < array[i].length; j++) {
            // console.log(array[i][j]);
            result_array.push(array[i][j]);
        }
    }
    return result_array
}


array1 = [
    [2, 3, 4],
    ["H", 3, true],
]

printMulti(array1)
console.log(printMulti(array1));

// console.log(array1[0].length);
