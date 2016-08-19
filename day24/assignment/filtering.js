// var _ = require('underscore');
//
// var result = _.filter([1, 2, 3], function(x) {
//   return x >= 2;
// });
//
// var isPositive = function(num) {
//   //isNaN
//   if ((typeof(num) == 'number') && (num >= 0)) {
//     return true;
//   } else {
//     return false;
//   }
// }
//
// // console.log(isPositive(4));
// // console.log(isPositive(-2));
// // console.log(isPositive('car'));
//
// var result = _.filter([-5, 0, 1, 'car'],function(num) {
//   //isNaN
//   if ((typeof(num) == 'number') && (num >= 0)) {
//     return true;
//   } else {
//     return false;
//   }
// })
// console.log(result);


// raf's answer not using underscore library
var filter = function(arr, operation) {
  var array = [];
  for (var i = 0, len = arr.length; i < len; i++) {
    if (operation(arr[i]) == true) {
      array.push(arr[i]);
    }
  }
  return array;
}
console.log(filter([-5,1,0,'car'], function(n) {
  if (typeof(n) == "string") {
    return false;
  } else if (n >= 0) {
    return true;
  } else {
    return false;
  }
}))

//hyun using underscore library
var _ = require('underscore');

var result = _.filter([-5,0,1,'car'],function(n) {
  if (typeof(n) == "string") {
    return false;
  } else if (n >= 0) {
    return true;
  } else {
    return false;
  }
});

console.log(result);
