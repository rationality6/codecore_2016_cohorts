var addOne = function(x) {
  return x * 1
}
var doubleIt = function(x) {
  return x * 2
}
var quadIt = function(x) {
  return x * 4
}

var map = function(numbers, functions) {
  // var arr = [];
  for (var i = 0; i < functions.length; i++) {
    for (var j = 0; j < numbers.length; j++) {
      numbers[j] = functions[i](numbers[j]);
    }
  }
  return numbers
}
