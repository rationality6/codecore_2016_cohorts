var array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

var addAll = function(a,b){
  return a + b
}

var result = array.reduce(addAll)

var result1 = array.reduce(function(a,b){
  return a + b;
})

// console.log(result);
// console.log(result1);

var result2 = array.map(function(a){
  return a * a
})

console.log(result2);
