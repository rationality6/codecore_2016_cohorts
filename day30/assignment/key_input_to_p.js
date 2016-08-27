$('input:text').on('keyup', function(event) {
  var $input = $(event.target);
  var types = $input.val()
  $('p#form-message').text(types)
});


$('#button-1')
document.getElementById('button-1')

$('.some_class')
document.getElementsByClassName('some_class')


var $formMessage = $('#form-message');

$('input').on('keyup', function(event) {
  var $input = $(this);
  $formMessage.html($input.val())
});

$('input:text').on('keyup', function(event) {
  var $input = $(event.target);
  var types = $input.val();
  var typeReverse = types.split("").reverse().join("");
  $('p#form-message').text(typeReverse);
});
