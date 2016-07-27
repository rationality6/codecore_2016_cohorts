var capital = function(n) {
    console.log(`${n[0].toUpperCase()}${n.slice(1)}`);
}

capital('I like to play starcraft.')

var capitalEven = function(n) {
    array = []
    for (var i = 0; i < n.length; i++) {
        if (i % 2 == 0) {
            array += n[i].toUpperCase()
        } else {
            array += n[i]
        }
    }
    return array
}

console.log(capitalEven('hyunasdf'));
console.log(capitalEven('hyun aewofij'));
