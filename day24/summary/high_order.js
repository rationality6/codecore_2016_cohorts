var array = [1, 2, 3]

var func = function(x) {
  return x * x
}

func(10);

for (var i = 0, len = array.length; i < len; i++) {
  var value = func(array[i])
  console.log(value);
}
