// var myString = "Your name is John Lennon";
var myString = "awoeifjoiawefjaoweifjwoeifjoiwefjewaiofjaweofij awefoj awfeoij";

var mostRecurring = function(text) {
    var letterCounts = {};

    text.replace(/ /g, '').split('').forEach(
        function(letter) {
            letterCounts[letter]
            letterCounts[letter] = letterCounts[letter] ? letterCounts[letter] + 1 : 1
        }
    )
    console.log(letterCounts);
};

mostRecurring(myString)

for (key in {a:1,b:3,c:2}){
console.log(key);
}
