// var car = {
//   speed: 200,
//   name: "Persche",
//   year: 2016,
//   // method, is an attribute of an object
//   // anonymous function
//   drive: function() { //drive here is a method of the "car" object
//     console.log('Vrooooooommmm');
//   },
//   stop: function() {
//     console.log('screeetch');
//   }
// };
//
// car.drive()
// car.stop()



//ver2
var vroom = function() {
  console.log(`What is this ${this}`);
  console.log(`Vroooommm! I am driving at ${this.speed}`);
}

var stop = function() {
  if (this.speed === 'fast') {
    console.log('Screeetch!!');
  } else if (this.speed === 'medium') {
    console.log('RRrch');
  } else if (this.speed === 'slow') {
    console.log("sh");
  } else if (typeof(this.speed) === 'number') {
    console.log(`Scr${'e'.repeat(this.speed)}tch!!`);
  } else {
    console.log("Yikes, I don't know how fast I'm going");
  }
}

var car = {
  speed: 200,
  name: "Persche",
  year: 2016,
  drive: vroom,
  stop: stop
};

console.log(car.speed);
console.log(car.year);
car.drive()
car.stop()
