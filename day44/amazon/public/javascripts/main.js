$('input.btn').on('click', function(evt) {
    evt.preventDefault();
    $('#datas').append("<div>" + $('#name').val() + $('#contact').val() + $('select').val() + "</div>")
})
