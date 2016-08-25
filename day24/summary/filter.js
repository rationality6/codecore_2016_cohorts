var isEven = function(x) {
  return x % 2 === 0;
}

var isEven = function(x) {
  if (x % 2 === 0) {
    return true;
  } else {
    return false;
  }
}

console.log(isEven(100));
console.log(isEven(50));
console.log(isEven(35));

[1,2,3,4].filter(isEven);
console.log([1,2,3,4].filter(isEven));
