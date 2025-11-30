console.log('What is the capital of Peru?')

setTimeout(function(){
    console.log('Lima!')
}, 3000)

// setTimeout(function(){
//     console.log('Ready for next question?')
// }, 6000)

/*
Challenge:
1. Make the third console.log fire 3 seconds after 
   the answer appears.
*/

function correctAns (points){
    console.log(`Here is ${points} points for your job done`)
}

setTimeout(correctAns, 6000, 10)   //with param func(from third param in settimeout, func param should be passed)