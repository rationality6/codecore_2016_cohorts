var counter = 0;
var intervalId = setInterval(function() {
  console.log("Hello World");

  if (counter >= 4) {
    clearInterval(intervalId); //takes in as it's argument an intervalId
  }

  counter++;
}, 500);
