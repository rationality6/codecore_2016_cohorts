var obj = {
    a: 5,
    b: 6,
    skills: [{
            ruby: ['rails', 'sinetra']
        }, {
            python: ['django', 'plask']
        }

    ]
}

console.log(obj.a + obj.b);
console.log(obj.skills[0].ruby[0]);
var string = 'Sinatra is awsome.'

var count_string = function(string) {
    var objects = {};
    for (var i = 0; i < string.length; i++) {
        objects[string[i]] = objects[string[i]] + 1 || 1;
    }
    return objects;
}

var hash = count_string("Hello World")
console.log(hash);
