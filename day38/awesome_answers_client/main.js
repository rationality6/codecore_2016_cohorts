$(document).ready(function() {
  $.get('http://localhost:3000/questions.json', function(data) {
    for (var i in data) {
      var template = $('#question-listing-tmpl').html();
      var renderedHTML = Mustache.render(template, data[i]);
      $("#questions").append(renderedHTML);
    }
  })
});
