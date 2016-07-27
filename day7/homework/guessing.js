
// var readline = require("readline");
var guessing = function() {
    console.log(rand);
    var rand = Math.floor(Math.random() * 100)
    result = true
    counter = 0
    while (result) {
        var user_input = prompt("choose a number between 0 and 100")
        if (user_input == rand) {
            window.alert(`Courrect Times : ${counter}`);
            result = false
        } else if (user_input < rand) {
            window.alert('Greater than');
        } else if (user_input > rand) {
            window.alert('Less than');
        } else {

        }
        counter++
    }
}

guessing()
