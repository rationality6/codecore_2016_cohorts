var map = function(array, func) {
  result_array = []
    // for (var i = 0; i < array.length; i++) {
  for (var i = 0, len = array.length; i < len; i++) {
    result_array.push(func(array[i]))
  }
  return result_array
}

var addOne = function(x) {
  return x + 1;
}

console.log(map([1, 2, 3], addOne));
