var doubleIt = function(a) {
    return a * 2
}

var number = doubleIt(5);

// console.log(number);

function countCharacter() {
    console.log(string.length + 'characters');
}

var increment = function(n) {
        return n + 1
    }
    // console.log(increment(2));
    // console.log(increment(3));

array1 = [1, 2, 3, 4, 5]

function doubleArray(n) {
    array = []
    for (var i = 0; i < n.length; i++) {
        array.push(n[i] * 2)
    }
    return array
}

// console.log(doubleArray(array1));

var insults = [
    'dufus',
    'sh*t',
    'fool',
    'idiot'
]

var insult = function(name) {
    var random = Math.round(Math.random())
    rnum = random * insults.length;
    console.log(`${name} is ${insults[rnum]}`);
}

insult("John")
