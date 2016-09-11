$(document).ready(function() {

  $.get('http://localhost:3000/products.json', function(data) {
    for (var i in data) {
      var template = $('#product-listing-tmpl').html();
      var renderedHTML = Mustache.render(template, data[i]);
      $("#products").append(renderedHTML);
    }
  })

  $(document).on('click', '#title', function() {
    console.log($(this).data('id'));
    var target = $(this).data('id')
    $("#products").html('');
    $.get('http://localhost:3000/products/' + target + '.json', function(data) {
      var template = $('#product-show-tmpl').html();
      var renderedHTML = Mustache.render(template, data);
      $("#products").append(renderedHTML);
    })
  })

  $(document).on('click', '#back', function(e) {
    e.preventDefault();
    $("#products").html('');
    $.get('http://localhost:3000/products.json', function(data) {
      for (var i in data) {
        var template = $('#product-listing-tmpl').html();
        var renderedHTML = Mustache.render(template, data[i]);
        $("#products").append(renderedHTML);
      }
    })
  })

});
