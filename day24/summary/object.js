// var cookie = {
//   sugar: 10,
//   flour: 15,
//   info: function() {
//     console.log(`This cookie has ${this.sugar} ${this.flour}`);
//   }
// }
//
// cookie.info()


var cookie = {
  sugar: 10,
  flour: 15,
  info: function() {
    console.log("this cookie has " + this.sugar + "g of sugar and " + this.flour + "g of flour");
    var that = this;
    var innerFn = function() {
      // `this` in here is probably different than you think. In this case `this.sugar` will likely be `undefined`
      // because `this` references the `window` object if you run this Javascript code in a browser
      console.log(that.sugar);
    }
    innerFn();
  }
}
cookie.info();
