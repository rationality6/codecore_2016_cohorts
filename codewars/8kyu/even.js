function even_or_odd(number) {
    if (number % 2 == 0) {
      return 'Even'
    } else if (number % 2 !=0) {
      return 'Odd'
    }
}

function even_or_odd(number){
  return number % 2 == 0 ? "Even":"Odd"
}

console.log(even_or_odd(2)); //Even
console.log(even_or_odd(0)); //Even
console.log(even_or_odd(7)); //Odd
console.log(even_or_odd(1)); //Odd
