
array = [1,2,3,4,5]

var re = array.reduce(function(a,b){
  return a+b
})

var me = array.map(function(a){
  return a * 2
})

console.log(me);

array = [9,2,3,4,5,8]

for (var i in array) {
  console.log(array[i]);
}
