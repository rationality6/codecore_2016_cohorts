$('form').on('submit', function(event) {
  $('input:text').val('')
  console.log($(event.target).find('input:text'));
})

$('form').on('submit', function(event) {
  console.log('Form submitted!!!')
  console.log(event);

  console.log($(event.target).find('input:text'))

  $('input:text').val('');
});

$('a').on('click',function(event){
  event.preventDefault();
})

$('.shape').on('click',function(event){
  console.log('shape was clicked!');
})
