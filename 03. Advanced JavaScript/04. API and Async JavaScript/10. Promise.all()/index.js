function createPromise(){
    return new Promise((resolve, reject) => {
        const success = Math.random() > 0.5
        if (success) {
            resolve('Operation successful')
        } else {
            reject('Operation failed')
        }
    })  
}


// promise.then(response => console.log(response))

try {
    const response1 = createPromise()
    const response2 = createPromise()
    const response3 = createPromise()
    const response = await Promise.all([response1, response2, response3])  //if all resolves, returns an array
    console.log(response)
} catch(err) {
    console.log(err)
}
