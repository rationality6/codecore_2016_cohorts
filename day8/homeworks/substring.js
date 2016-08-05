var substring = function(string) {
    array = []
    string = string.replace(" ","");
    for (var i = 0; i <= string.length; i++) {
        for (var j = 1; j <= string.length - i; j++) {
            a = string.substr(i, j)
            array.push(a)
        }
    }
    return array
}

name_of = "dogk"

console.log(substring(name_of));

// name_of = "dog"
// console.log(name_of.substr(1, 2));
