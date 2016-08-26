$(document).ready(function() {
  $(document).on('keypress', function(event) {
    var keyCode = event.charCode
    var key = String.fromCharCode(keyCode)

    if (key === 'v') {
      $('#orange-container').toggle();
    } else if (key === 'b') {
      $('.blue.shape').toggle();
    } else if (key === 'r') {
      $('.red.shape').toggle();
    } else if (key === 'k') {
      $('.black.shape').toggle();
    }
  })
});

// 98 b
// 114 r
// 107 k
