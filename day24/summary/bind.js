var cookie = {
  sugar: 10,
  info: function() {
    console.log(this.sugar)
    var innerFn = function() {
      console.log(`${this.sugar}`)
    }
    innerFn.call(this);
  }
}
cookie.info()
