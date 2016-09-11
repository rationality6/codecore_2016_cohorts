array = [1, 2, 3, 4, 5]

var result = array.reduce(function(a, b) {
  return a + b
})

console.log(result);

array = [1, 2, 3, 4, 5]

var result = array.map(function(a){
  return a* a
})

console.log(result);
