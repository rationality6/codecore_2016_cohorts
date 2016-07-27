var printMulti = function(array) {
    for (var i = 0; i < array.length; i++) {
        for (var j = 0; j < array[i].length; j++) {
            console.log(array[i][j]);
        }
    }
}


array1 = [
    [2, 3, 4],
    ["H", 3, true],
]

printMulti(array1)

// console.log(array1[0].length);
