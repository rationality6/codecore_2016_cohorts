$('.shape').mouseover(function() {
  $(this).addClass('highlight')
}).mouseout(function() {
  $(this).removeClass('highlight')
})


$('.shape').click(function() {
  if ($(this).hasClass('small')) {
    $(this).hide();
  } else if ($(this).hasClass('medium')) {
    $(this).removeClass('medium').addClass('small')
  } else {
    $(this).removeClass('large').addClass('medium')
  }
});


$('section>table>tbody').prepend('<tr><td>0</td><td>-</td></tr>');


$('input:submit').click(function() {
  var $value = $('input:text').val()
  console.log($value);
  $('p#form-message').text($value)
});


$('#button-1').on('click', function() {
  $('#green-container').toggle()
})

$('#button-2').on('click', function() {
  $('#button-message').fadeOut().fadeIn();
})

$('#button-3').on('click', function() {
  $('#green-container').toggle()
})

$('#button-4').on('click', function() {
  $('#green-container').toggle()
})

$('#form-1').on('submit', function(event) {
  var $user_input = $('input:text').val()
  $('.' + `${$user_input}` + '.shape').remove()
  $('input:text').val("")
});
