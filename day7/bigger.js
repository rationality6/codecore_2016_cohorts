var first = prompt("fisrt")
var second = prompt("second")
var third = prompt("third")

var bigger = 0

if (first > second) {
    bigger = first
} else {
    bigger = second
}
if (bigger > third) {
    console.log(bigger);
} else {
    console.log(third);
}
