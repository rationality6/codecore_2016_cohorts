
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
})

$('section>table>tbody').prepend('<tr><td>0</td><td>-</td></tr>');

$('input:submit').click(function(){
  var value = $('input:text').val()
  console.log(value);
  $('input:text').val('')
});
