// console.log("Ready");
//
// var time = 1000;
// setTimeout(function() {
//   console.log("Set...");
// }, time);
//
// time += 1000;
//
// setTimeout(function() {
//   console.log("Go!");
// }, time);

var arr = ["Ready", "set", "go"]
var n =0
for (var i = 0; i < arr.length; i++) {
  setTimeout(function() {
    console.log(arr[n]);
    n++;
  }, 1000 * i)
}
