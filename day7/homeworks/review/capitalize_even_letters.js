var capitalize_even = function(string) {
  result_array = ''
  for (var i = 0; i < string.length; i++) {
    if (i % 2 == 0) {
      result_array += string[i]
    } else {
      result_array += string[i].toUpperCase()
    }
  }
  return result_array
}

console.log(capitalize_even('hello'));
