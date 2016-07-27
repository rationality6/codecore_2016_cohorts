// var array1 = [1, 2, 3];
// var array2 = [3, 4, 5];
//
// var merge = function(x_array, y_array) {
//     return x_array.concat(y_array);
// }

// a = merge(array1, array2)

//
// var deleting = function(array) {
//     array.sort()
//     for (var i = 0; i < array.length; i++) {
//         if (array[i] === array[i + 1]) {
//             delete array[i]
//             array.reduce()
//         }
//     }
//     return (array)
// }
//
// console.log(deleting(a));


array = [5,6,6,3];
var unique = array.filter(function(elem, index, self) {

    console.log(elem);
    console.log(index);
    console.log(self);

    return index == self.indexOf(elem);
})

console.log(unique)
