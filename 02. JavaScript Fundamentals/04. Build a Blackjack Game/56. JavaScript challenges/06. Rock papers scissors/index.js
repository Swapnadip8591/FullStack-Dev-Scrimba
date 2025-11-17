let hands = ["rock", "paper", "scissor"]

// Create a function that returns a random item from the array

function returnHands(){
    let randomHand = Math.floor(Math.random() * hands.length)
    return hands[randomHand]
}

console.log(returnHands())