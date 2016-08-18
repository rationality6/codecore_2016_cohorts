// console.time("decrementing while loop");
//
// var i = 10000;
//
// while (i--){
//   console.log(i);
// }
//
// console.timeEnd("decrementing while loop")
//
//
// console.time("decrementing while loop");
//
// var i = 10000;
//
// while (i> 0){
//   console.log(i);
//   i--
// }
//
// console.timeEnd("decrementing while loop")


console.time("decrementing while loop");

var i = 0;
var a = [];

while (i> 10000){
  a.push(i)
  console.log(i);
  i++;
}

console.timeEnd("decrementing while loop")
