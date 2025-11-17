// Try to modify the expression so that we get a range from 1 to 6
let randomNumber = getRandomNumber()

console.log(randomNumber)

function getRandomNumber(){
    return Math.floor( Math.random() * 6 ) + 1
}