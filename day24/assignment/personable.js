var Person = function(name, age, greet) {
  this.name = name;
  this.age = age;
  this.greet = function(person) {
    pers1.age > pers2.age ? console.log("Hello, " + this + "");
  }
}

var benny = new Person("Benny", 28);
var jacob = new Person("Jacob", 29)

console.log();

//
// // Assignment: Personable Persons Edit Next Module
// //
// // Create two person objects with an "age" attribute and a "name" attribute. Then, add a "greet" method to both people that accepts a person as a parameter and outputs the following:
// //
// // "Hello, [name1]. I am [name2]. Pleased to meet you." if person1 is older than person2.
// //
// // "Yo [name2]. I'm totally [name1]. Wsup!." if person2 is older than person1.
// var Person = function(name,age){
//   this.name = name;
//   this.age = age;
//   this.greet = function(person){
//     this.age > person.age ? console.log("Hello, "+this.name+". I am "+person.name+". Pleased to meet you.") : console.log("Yo "+person.name+". I'm totally "+this.name+" WSUP!?.");
//   };
// };
//
// var benny = new Person("Benny", 28);
// var jacob = new Person("Jacob", 29);
//
// benny.greet(jacob);
// jacob.greet(benny);
