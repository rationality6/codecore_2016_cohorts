$(document).ready(function() {

  var promptAndPlay = function(x) {
    var song = parseSong(x);
    playSong(song, 500, function(){
      $('#button').html("Play");
    });
  };

  $('#button').click(function() {
    $(this).html("Playing...");
    promptAndPlay($('#input').val());
  });
});
