var moreThanTen = function(a){
	  return a > 10
}

var equalLessThanTen = function(a){
	  return a <= 10
}

var setFilter = function(array, filter){
	  return array.filter(filter)
}

array0 = [9,10,11,12,8,13]

console.log(setFilter(array0, moreThanTen));
console.log(setFilter(array0, equalLessThanTen));
