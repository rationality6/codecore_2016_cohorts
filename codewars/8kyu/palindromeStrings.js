function isPalindrome(line) {
  return String(line) === String(line).split('').reverse().join('')
}

console.log(isPalindrome('anna'));
console.log(isPalindrome('anina'));
console.log(isPalindrome('aniena'));

