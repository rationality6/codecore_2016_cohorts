// morning cohort 14!!!


// selectors - querying the dom
$("#green-container")
$(".shape")
$("a")
$("li")
$("tr")
$("div span")
$("ul > li")

$('[href]')
$('[href="http://wwww.codecore.ca"]')
$("[href='http://wwww.codecore.ca']")
$("[href!='http://wwww.google.com']") // any link not == to google.com
$("[href*='.com']") // will select any link containg .com

$('a[href]').attr('href')



// exercises

// select all the links with any href attribute
$('a[href]');
// select all the links to facebook.com
$('a[href="http://www.facebook.com"]');
// highlight all the links to any .com url by setting their class to highlight
$('a[href*=".com"]').addClass('highlight');
// hide the links NOT set to "http://www.google.com"
$('a[href!="http://www.google.com"]').hide();

// exercises
// select the first table row
$('tr:first-child').addClass('highlight');
// select the last table row
$('tr:last-child').addClass('highlight');
// remove the even-numbered shapes from the green container
$('#green-container .shape:even').hide();
// highlight the odd rows on the table
$('tr:odd').hide();
// hide the last shape in every container
$('.container .shape:last-child').hide();
$('.container :last-child').hide();


// overwrite all class already defined
$('#green-container').attr('class', '.container');
// add a class to the existing list of classes if any are defined
$('#green-container').addClass('container');
$('#green-container').removeClass('container');
// if it is there, we remove it.  if it is not there, we add it.
$('#green-container').toggleClass('container');

if ($('#green-container').hasClass('container')) {
  // do something
}

// <div id="green-container" class="container">

// add the highlight class to all the links
$('a').addClass('highlight');
// remove the highlight class to all the links
$('a').removeClass('highlight');
// toggle the highlight class to all the links
$('a').toggleClass('highlight'); // on
$('a').toggleClass('highlight'); // off
$('a').toggleClass('highlight'); // on
$('a').toggleClass('highlight'); // off
$('a').toggleClass('highlight'); // on
// add my-own-class and verify it's there
$('body').addClass('my-own-class');
if ($('body').hasClass('my-own-class')) {
  console.log('Yup! The class has been added.');
}

// joe
$('.container').on('click', function() {
  $('.shape').addClass('highlight');
});

// rod
$('#green-container').on('click', function() {
  addHighlight(this);
});

var addHighlight = function(container) {
  $(container).toggleClass('highlight');
};

//jacob
$('.container').click(function() {
  $(this).children('.shape').toggleClass('highlight');
});

$('.container').hover(function() {
  $(this).children('.shape').toggleClass('highlight');
});

$('.shape').hover(function() {
  $(this).toggleClass('highlight');
});


// change the color of all the blue shapes to red, using one line of code
$('.shape.blue').removeClass('blue').addClass('red');
$('.shape.blue').toggleClass('blue').toggleClass('red');
$('.shape.blue').toggleClass('blue red');

// change all the small red circles into large grey squares, using one line of code
// after
// <div class="small circle red">
$('.small.circle.red').toggleClass('small circle red large grey square');
// after
// <div class="large grey square">

$('.small.circle.red').addClass('grey square').removeClass('circle red');

// val
$('input[type="text"]');

// exercises
// // Set the value of the text field in the form to "Hello World"
// setter
$('input:text').val("Hello World");
$('#form-1 [type="text"]').val("Hello World");
// // Get the value of the text field in the form
// getter
$('input:text').val();
$('#form-1 [type="text"]').val();

// When the form's "Submit" button is clicked, change the contents of
// "Form Message" to be the text field's value
$('input:submit').click(function() {
  //$('input:text').val() - we can do this because it is a form element
  // $('input:submit').val() - we can also do this because it is a form element
  // $('#form-message').val() - we cant do this, because #form-message is a p - paragraph tag, not a form element
  $('#form-message').html($('input:text').val());
});

// append & prepend
$('body').append("<h1>Hello World</h1>");
$('body').prepend("<h1>Goodye World</h1>");

// // Append a "p" tag containing "Appended" to the "body" element
$('body').append('<p>Appended</p>');
// // Prepend a "p" tag containing "Prepended" to the "body" tag
$('body').prepend('<p>Appended</p>');

// // Append a new list item to the List, containing a link to link Amazon.com
$('ul').append('<li><a href="http://www.amazon.com">Amazon Website</a></li>');

$('#green-container').find('.shape')




// ************** TRAVERSALS (FIND, NEXT, PREV) **************
// // Select all the red shapes in the orange-container, using "find"
$('#orange-container').find('.red.shape');
// // Remove all the shapes just before a small red circle
$('.container').find('.shape.small.red.circle').prev('.shape').remove();
$('.shape.small.red.circle').prev().remove();
$('.shape.small.red.circle').prev('.shape').remove();
$('.small.red.circle').prev('.shape').remove();
// // Hide all shapes just after any grey shape
$('.shape.grey').next().hide('.shape');
$('.shape.grey').next('.shape').hide();
$('.grey').next('.shape').hide();
// // Make all the circles in the green-container black, using "find"
$('#green-container').find('.circle.shape').addClass('black');
$('#green-container').find('.circle').addClass('black').removeClass('blue red');

$('#orange-container').slideUp()
$('#orange-container').slideDown()
$('#green-container').slideUp()
$('#green-container').slideDown()
