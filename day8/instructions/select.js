var joe = {
    junior: {
        weight: 6
    }

}

console.log(joe.junior.weight);
joe.junior["birth weight"] = 5;

console.log(joe);

var obj = {
    a: [1, 2, 3],
    b: {
        c: 6
    },
    sons: [{
        name: "Joe"
    }, {
        name: "Jacob"
    }, {
        name: "John"
    }]
}

console.log(obj.a[2] + obj.b.c);
console.log(obj.sons[1].name);
console.log(obj.sons[2].name);
