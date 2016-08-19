// var applyOperation = function(number, operation) {
//   // console.log(number);
//   // operation();
//
//   console.log(operation(number));
// }
//
// var square = function(number) {
//   return number * number;
// };
//
// var addTwo = function(number) {
//   return number + 2;
// }
//
// // console.log(square(5));
// // console.log(square(3));
// // console.log(square(384957));
//
// applyOperation(3, square);
// applyOperation(5, square);
// applyOperation(3328, square);
//
// applyOperation(3, addTwo);
// applyOperation(5, addTwo);
// applyOperation(3389, addTwo);

var doubleIt = function(x, times) {
  return (2 * x) * times;
}

var call = function(num, oper, times) {
  return oper(num, times)
}

console.log(call(5, doubleIt, 2));
