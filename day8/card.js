var card_symbols = ['c', 'd', 'h', 's']
var card_numbers = ['A', 2, 3, 4, 5, 6, 7, 8, 9, 'T', 'J', 'Q', 'K']

var make_cards = function(card_symbols, card_numbers) {
    var decks = []
    for (var i = 0; i < card_symbols.length; i++) {
        // console.log(card_symbols[i]);
        for (var j = 0; j < card_numbers.length; j++) {
            // console.log(card_numbers[j]);
            decks.push(`${card_numbers[j]}${card_symbols[i]}`)
        }
    }
    return decks
}

decks = make_cards(card_symbols, card_numbers)

function shuffle(array) {
    var currentIndex = array.length,
        temporaryValue, randomIndex;

    // While there remain elements to shuffle...
    while (0 !== currentIndex) {

        // Pick a remaining element...
        randomIndex = Math.floor(Math.random() * currentIndex);
        currentIndex -= 1;

        // And swap it with the current element.
        temporaryValue = array[currentIndex];
        array[currentIndex] = array[randomIndex];
        array[randomIndex] = temporaryValue;
    }

    return array;
}

shuffled_decks = shuffle(decks)
console.log(shuffled_decks);
