var Cookie = function(name, price) {
  this.name = name;
  this.price = price;
  info = function() {
    console.log('infomation');
  }
}

var oreo = new Cookie('Oreo', 3);
var homemade = new Cookie('Homemade', 8);
console.log(oreo.name);
console.log(homemade.name);
oreo.info()
