// var isPositive = function(param) {
//   if (typeof(param) === 'string') {
//     return false
//   } else if (typeof(param) === 'number') {
//     return true
//   }
// }
//
// console.log(isPositive('string'));
// console.log(isPositive(343));
//
// console.log(typeof('s'));


// Assignment: Possibly Positive
//
// Write a function called isPositive which takes one parameter. If that parameter is a number, return true if it is greater than or equal to 0 and false otherwise. If that parameter is a string, always return false.
var isPositive = function(num) {
  //isNaN
  if ((typeof(num) == 'number') && (num >= 0)) {
    return true;
  } else {
    return false;
  }
}

console.log(isPositive(4));
console.log(isPositive(-2));
console.log(isPositive('car'));
