// nameWriter(me);

var wordLengths = function(sentence) {
    var words = sentence.split(" ")
    var obj = {};
    for (var i = 0; i < words.length; i++) {
        obj[words[i]] = words[i].split("").length;
    }
    return obj;
}

console.log(wordLengths("Hello World"));
// console.log(newObj);


var me = {
    name: "Jacob Tran",
    age: 37
};

delete me.age;
delete me['age'];
delete me[prop];

for (var prop in me) {
    console.log(prop);
    console.log(me[prop]);
}
