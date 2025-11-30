let currentGuestNumber = 0

function getGuestNumber(){
    return ++currentGuestNumber
}

console.log(`Guest 1: ${getGuestNumber()}`)
console.log(`Guest 2: ${getGuestNumber()}`)
console.log(`Guest 3: ${getGuestNumber()}`)