var _ = require('lodash')

test_array0 = [1, 2, 3, 4, 5, 6, 7, 8]
test_array1 = ["Lyn", "Josh", "Hem", "Nancy", "Dohoon", "Foo"]

var object0 = {
  team_ran: function(array) {
    var result = []
    var shuffled = _.shuffle(array)
    var chunk = _.chunk(shuffled, 2)
    for (var i = 0, len = chunk.length; i < len; i++) {
      result.push(`Team${i+1} ${chunk[i]}`);
    }
    return result
  }
}

console.log(test_array0);
console.log(object0.team_ran(test_array0));
console.log(object0.team_ran(test_array1));
