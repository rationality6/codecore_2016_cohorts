var guessing = function() {
    var user_input = prompt("choose a number between 0 and 100")
    var rand = Math.random * 100

    if (parseInt(user_input) === rand) {
        window.alert('Correct');
        result = false
    } else if (parseInt(user_input) < rand) {
        window.alert('Greater than');
    } else if (parseInt(user_input) > rand) {
        window.alert('Less than');
    } else {
        window.alert('Wrong numbers');
    }
}

var result = true

while (result) {
    guessing()
}
