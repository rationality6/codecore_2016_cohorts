console.log(bob.getYearOfBirth());

var bob = new Object();
bob.age = 17;
bob.setAge = function(newAge){
    bob.age = newAge;
};

bob.getYearOfBirth = function(){
    return 2017 - bob.age;
}

console.log(bob.getYearOfBirth());
