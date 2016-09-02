$(document).ready(function() {

  var songs_array = []

  $('#play-button').click(function(evt) {
    evt.preventDefault();
    $(this).html('Playing...');
    var clone = songs_array.slice(0);
    promptAndPlay(clone)
    $(this).html('Play All')
  })

  $('[value="Add Song"]').click(function(evt) {
    evt.preventDefault();
    if ($('input:text').val().length > 0) {
      $('#song-queue').append('<li>' + $('input:text').val() + '</li>');
      songs_array.push($('.form-control').val());
      $('input:text').val("");
      $('input:text').attr('placeholder', "Add more...");
    }
  })
});

var promptAndPlay = function(songs_array) {
  var song = parseSong(songs_array[0]);
  playSong(song, 500, function() {
    songs_array.shift()
    promptAndPlay(songs_array)
  })
};
