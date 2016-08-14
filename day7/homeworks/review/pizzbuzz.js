var pizzbuzz = function(x, y) {
  for (var i = 1; i < 100; i++) {
    if (i % x == 0 && i % y == 0) {
      console.log('PizzBuzz');
    } else if (i % x == 0) {
      console.log('Pizz');
    } else if (i % y == 0) {
      console.log('buzz');
    } else {
      console.log(i);
    }
  }
}

pizzbuzz(3, 5)
