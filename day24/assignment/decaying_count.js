// var count = 1
//
// var interval = setInterval(function() {
//   console.log(count);
//   if (count === 10) {
//     clearInterval(interval)
//   }
//   count++
// }, 1000 + count)


var n = 1, time = 1000;
for (var i = 0; i < 10; i++) {
  setTimeout(function() {
    console.log(n++);
  }, time += (1000 * i));
}
