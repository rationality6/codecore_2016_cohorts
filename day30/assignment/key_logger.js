array = []
$('input:text').keypress(function(e) {
  var charcode = e.which;
  var key = String.fromCharCode(charcode);
  array.push(key)
  console.log(array);
});
