function reverseString(string) {

    var i = string.length - 1
    var chr = ""

    while (i > -1) {
        chr += string[i]
        i--;
    }
    return chr;
}

console.log(reverseString("hyun"));


function reverse(string) {
    return string.split('').reverse().join('');
}

console.log(reverse("hyun"));
