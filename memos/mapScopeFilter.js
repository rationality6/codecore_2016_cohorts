map_value = [1, 2, 3, 4, 5]

var mapTo = function(data) {
  return data.map(function(i, key) {
    console.log(this.f);
    return i * i
  })
}

// const mapTo = (data) => {
//   return data.map((i, key) => {
//     return i * i
//   })
// }

var otherScope = function() {
  this.f = 'f'
  console.log(mapTo(map_value));
}
otherScope()


var array0 = [12,5,8,130,44]

function isBigEnough(value){
  return value >=10;
}

function sortDesc(a,b){
  return (a-b)*-1
};

var filtered = array0.filter(isBigEnough).sort(sortDesc)

console.log(filtered);
