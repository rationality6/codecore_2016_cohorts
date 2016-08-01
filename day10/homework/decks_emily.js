function cardDeckGenerator() {
    var ranks = ["ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "jack", "queen", "king"];
    var suits = [" of diamonds", " of clubs", " of hearts", " of spades"];
    var deck = [];
    for (var rank = 0; rank < ranks.length; rank++) {
        // eg 'ace' -> iterate through each rank one time
        for (var suit = 0; suit < suits.length; suit++) {
            // of diamonds -> for each iteration through the rank, make new cards by assigning a suit of each type to seperate cards of each rank.
            var card = ranks[rank].concat(suits[suit]);
            deck.push(card); // adds the new cards to the 'deck' array.
        }
    }
    return deck;
}

// console.log(cardDeckGenerator());

var deckOfCards = cardDeckGenerator(); // puts the reult of the cardDeckGenerator into a variable.

// indexOfcard finds the index number of the card in its current position in the deck array.
function indexOfcard(card, deck) {
    return deck.indexOf(card)
};

// chooses one random card from the deck, and returns that card by randomizing the card index value.
function randomCard(deck) {
    var indexOfcard = Math.floor(Math.random() * deck.length)
    var random = deck[indexOfcard];
    return random
};


// shuffles the deck, returning a new array, 'shuffledDeck' of all 52 cards listed in a random order, using the functions 'randomCard' and 'indexOfcard', as made above.
function shuffle(deck) {
    // console.log(deck.length);
    var shuffledDeck = [];
    while (deck.length > 0) {
        var card = randomCard(deck); // picks out a random card
        shuffledDeck.push(card); // adds it to the array
        var indexToDelete = indexOfcard(card, deck); // isolates that card from the deck
        deck.splice(indexToDelete, 1); //splice needs 2 args, it removes the indexToDelete so that it cannot be called again at random from the original deck.
    }
    // console.log(shuffledDeck.length); //shows that there are still 52 cards
    return shuffledDeck;
}

// console.log(deckOfCards);
// console.log(randomCard(deckOfCards));
// console.log(shuffle(deckOfCards));



//
// //duplication_checking test code
// var testcode = function(arr) {
//     // arr.push('10 of clubs')
//     // console.log(arr);
//     sorted_array = arr.sort()
//     duplicate_array =[]
//     for (var i = 0; i < arr.length; i++) {
//         if (sorted_array[i+1] === sorted_array[i]){
//             duplicate_array += sorted_array[i]
//         }
//     }
//     return duplicate_array
// }
// console.log(testcode(shuffle(deckOfCards)));
