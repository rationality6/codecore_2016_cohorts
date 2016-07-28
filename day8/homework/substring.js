var substring = function(string) {
    array = []
    cutter = 0
    for (var i = 0; i <= string.length; i++) {
        for (var j = 1; j <= string.length - cutter; j++) {
            a = string.substr(i, j)
            array.push(a)
        }
        cutter += 1
    }
    return array
}

name_of = "dog"

console.log(substring(name_of));

// name_of = "dog"
// console.log(name_of.substr(1, 2));
