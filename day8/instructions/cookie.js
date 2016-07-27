// var cookie = {}; // cookie.sugar = 100;
//
// console.log(cookie);
// cookie.bake = function() {
//     console.log("baking...");
// }
//
// var cookie = {
//     sugar: 100,
//     bake: function() {
//         console.log("baking...")
//     }
// };
//
// var cookie2 = clone(cookie);

function Cookie(sugar, flour) {
    this.sugar = sugar;
    this.flour = flour;
    this.bake = function() {
        console.log("baking...")
    }
}

var myCookie = new Cookie(100, 200);

console.log(myCookie.sugar);
console.log(myCookie.flour);
myCookie.bake()



function Person(first, last, age, eyecolor) {
    this.firstName = first;
    this.lastName = last;
    this.age = age;
    this.eyecolor = eyecolor;
}

var vic = new Person("Vic", "Wang", 20)

Person.prototype.birthday = "December 25, 0";
Person.prototype.name = function() {
    return this.firstName + " " + this.lastName;
}

var vic = new Person("Vic", "Wang", 20, "brown")
console.log(vic);
