class SmallestIntegerFinder {
  findSmallestInt(args) {
    var min = args[0]
    for (var i = 0, len = args.length; i < len; i++) {
      if (args[i] < min) {
        min = args[i]
      }
    }
    return min
  }
}

function findSmallestInt(args) {
  var min = args[0]
  for (var i = 0, len = args.length; i < len; i++) {
    if (args[i] < min) {
      min = args[i]
    }
  }
  return min
}

class SmallestIntegerFinder {
  findSmallestInt(args) {
    return Math.min(...args)
  }
}

console.log(findSmallestInt([1, 2, 3, 4, 5]));
