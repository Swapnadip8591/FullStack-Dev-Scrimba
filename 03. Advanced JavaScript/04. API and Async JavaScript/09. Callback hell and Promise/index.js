//callback hell looks like.....

// function uploadFile(callback) {
//   console.log('Step 1: Uploading file...')
//   setTimeout(() => {
//     callback() // Call the next step after 1 second
//   }, 1000)
// }

// function processFile(callback) {
//   console.log('Step 2: Processing file...')
//   setTimeout(() => {
//     callback() // Call the next step after 1 second
//   }, 1000)
// }

// function notifyUser(callback) {
//   console.log('Step 3: Notifying user...')
//   setTimeout(() => {
//     callback() // Call the next step after 1 second
//   }, 1000)
// }

// uploadFile(() =>
//     processFile(() =>
//         notifyUser(
//             () => console.log('All steps completed!')
//         )
//     )
// )

/*
Challenge:
1. Await these promises in order in a try/catch block and 
   when they are done, log 'All steps completed!',

// expected output:

// Step 1: Uploading file...
// Step 2: Processing file...
// Step 3: Notifying user...
// All steps completed!
*/


//using promise on same thing...

function uploadFile() {
    return new Promise((resolve, reject) => {
        console.log('Step 1: Uploading file...')
        setTimeout(() => {
            resolve() // Call the next step after 1 second
        }, 1000)
    })
}

function processFile() {
    return new Promise((resolve, reject) => {
        console.log('Step 2: Processing file...')
        setTimeout(() => {
            resolve() // Call the next step after 1 second
        }, 1000)
    })
}

function notifyUser() {
    return new Promise((resolve, reject) => {
        console.log('Step 3: Notifying user...')
        setTimeout(() => {
            resolve() // Call the next step after 1 second
        }, 1000)
    })
}

try{
    await uploadFile()
    await processFile()
    await notifyUser()
    console.log('All steps completed!')
} catch(err){
    console.log(err)
}