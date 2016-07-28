array1 = "I love running"

var reverse_string = function(array_take) {
    newArray = array_take.split("");
    reversed_array = newArray.reverse()
    joind_array = reversed_array.join("")
    return joind_array
}

console.log(reverse_string(array1));
