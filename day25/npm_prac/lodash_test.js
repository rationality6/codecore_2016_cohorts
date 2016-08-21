var _ = require('lodash')

test_array0 = [1, 2, 3, 4, 5, 6, 7, 8]

var object0 = {
  team_ran: function(array) {
    var result = []
    var shuffled = _.shuffle(test_array0)
    var chunk = _.chunk(shuffled, 2)
    for (var i = 0, len = chunk.length; i < len; i++) {
      result.push(`Team${i+1} ${chunk[i]}`);
    }
    return result
  }
}

console.log(object0.team_ran(test_array0));


array1 = [1, 2, 3, 8]
array2 = [2, 3, 4, 5]

console.log(_.difference(array1, array2));
