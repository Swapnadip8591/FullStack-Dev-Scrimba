//using .then()

// fetch('https://dog.ceo/api/breeds/image/random')
//     .then(response => response.json())  //.then() handles resolved promise
//     .then(data => console.log(data))
//     .catch(err=> console.log("Failed to get data"))  //.catch() handles rejected promises
//     .finally(()=> console.log("Finally block"))  //.finally() always execute for both 
    
//uisng aync/await

async function getData(){
    try{
        const response = await fetch('https://dog.ceo/api/breeds/image/random')
        const data = await response.json()
        console.log(data)
    } catch(err){
        console.log(err.message)
    } finally{
        console.log("Execution done")
    }
}

getData()