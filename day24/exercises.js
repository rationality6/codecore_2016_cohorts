var foo = function(x) {
  return 0
}

console.log(foo(10000));


var greeting = function(name, age) {
  return `${name} is ${age} years old`
};

console.log(greeting('Hyun', 29));
console.log(greeting('Ali', 29));

console.log(greeting('Hyun', 29));
console.log(greeting('Ali', 29));

var ob = {name:"Vic", age:95}

var greeting = function(name, age) {
  return `${ob.name} is ${ob.age} years old`
};


var wordLengths = function(word) {
  splited_word = word.split(" ")
  obj = {}
  for (var i = 0; i < splited_word.length; i++) {
    obj[splited_word[i]] = splited_word[i].length
  }
  return obj
};

console.log(wordLengths("Hello world"));
