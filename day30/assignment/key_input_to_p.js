$('input:text').on('keyup',function(event){
  var $input = $(event.target);
  var types = $input.val()
  $('p#form-message').text(types)
});

var $formMessage = $('#form-message');

$('input').on

$('input:text').on('keyup',function(event){
  var $input = $(event.target);
  var types = $input.val();
  var typeReverse = types.split("").reverse().join("");
  $('p#form-message').text(typeReverse);
});
