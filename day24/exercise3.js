// var counter = 0;
// var intervalId = setInterval(function(){
//   console.log(`${counter}`);
//
//   if (counter >= 10) {
//     clearInterval(intervalId); //takes in as it's argument an intervalId
//   }
//
//   counter++;
// }, 500);


var counter = 10;

var intervalId = setInterval(function() {
    console.log(`${counter}`);

  if (counter <= 1) {
    clearInterval(intervalId); //takes in as it's argument an intervalId
    console.log(`Blast off`);
  }

  counter--;
}, 500);
