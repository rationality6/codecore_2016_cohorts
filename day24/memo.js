var _ = require('underscore');

array1 = [1, 2, 3, 4, 5, 6]

var even = _.find(array1, function(num) {
  return num % 2 == 0
})

console.log(even);

var even = _.find([1, 2, 3, 4, 5, 6], function(num) {
  return num % 2 == 0;
});
console.log(even);

console.log(_.shuffle([1, 2, 3, 4, 5, 6]));
