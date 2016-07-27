var user_obj = {
    'John': 32,
    Kim: 22,
    "Hyun": 31,
    Jacop: 30,
    Tim: 33
}

for (i in user_obj) {
    console.log(i);
}

console.log(user_obj.length);

var name_age = function(array) {
    for (var i = 0; i < array.length; i++) {
        console.log(`${array[i]}`);
    }
}

name_age(user_obj)
