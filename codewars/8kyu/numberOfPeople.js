const number = (busStops) => busStops.reduce((rem, [on, off]) => rem + on - off, 0);

var number = function(busStops){
	  return busStops.reduce(function(rem, [on, off]){
		      return rem + on - off
		    }, 0);
}

console.log(number([[10,0],[3,5],[5,8]]));

console.log(number([[3,0],[9,1],[4,10],[12,2],[6,1],[7,10]]));
number([[3,0],[9,1],[4,8],[12,2],[6,1],[7,8]])

