var a = "123";

var b = {
	  a: 5,
	    b: 6
}



var c = 0;

if (parseInt(a) > 0) {
	  c = a + b.a
} else {
	  c = parseInt(a) + b.b
}

console.log(c);



var array = [0, 1, 2, 3, 4];

for (var i = 0; i < array.length; i += 1) {
	  console.log(array[i]);
}



$(document).ready(function() {
	  $('a').on('click', function(evt) {
		      evt.preventDefault();
			      console.log($(this).attr('href'));
				    })
})


prompt().match(/a/g) ? alert(string) : console.log(string);


var array = [1, 2, 3, 4]
var sum = 0
for (x in array) {
	  sum += parseInt(x);
}

console.log(sum);

