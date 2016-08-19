var doubleIt = function(x) {
  return 2 * x;
};

var call = function(num, oper) {
  return oper(num)
}

console.log(call(5,doubleIt));

console.log(
call(5, function(x) {
  return 2 * x;
})
);
