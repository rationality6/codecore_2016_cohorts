function betterThanAverage(classPoints, yourPoints) {
  var totalPoint = 0
  for (var i = 0, len = classPoints.length; i < len; i++) {
    totalPoint += classPoints[i]
  }
  var average = Math.floor(totalPoint / classPoints.length)
  return average < yourPoints ? "True" : "False"
}


//ES6 way

// function betterThanAverage(classPoints, yourPoints) {
//   return yourPoints > classPoints.reduce((a, b) => a + b, 0) / classPoints.length;
// }

//ES5 way

function betterThanAverage(classPoints, yourPoints) {
  return yourPoints > classPoints.reduce(function(a, b) {
    return a + b
  }) / classPoints.length;
}


console.log(betterThanAverage([100, 40, 34, 57, 29, 72, 57, 88], 75));
