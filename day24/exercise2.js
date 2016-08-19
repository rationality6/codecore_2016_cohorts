var map = function(arr, operation) {
  for (var i = 0, len = arr.length;)
}

var converter = function(array) {
  resultArray = []
  for (var i = 0, len = array.length; i < len; i++) {
    resultArray.push(array[i].length);
  }
  return resultArray
}

console.log(converter(['hello', 'data', 'eat cheese', 'walking']));

console.log(map(['hello', 'data', 'eat cheese', 'walking'], [addOne, doubleIt, quadIt]));



arr = [1, 2, 3, 4, 5, 6, 7, 8, 9];

var map = function(arr, operation) {
  for (var i = 0, len = arr.length; i < len; i++) {
    arr[i] = operation(arr[i]);
  }

  return arr;
};

var square = function(number) {
  return number * number;
}

console.log(map(arr, square)); //[1, 4, 9, 16, 25, 36, 49, 64, 81];






['hello', 'data', 'eat cheese', 'walking']


[1, 2, 3].forEach(function(i) {
  console.log(i);
})
