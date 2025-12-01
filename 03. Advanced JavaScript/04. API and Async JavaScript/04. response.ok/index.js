//when we break the endpoint, the promise from fetch is resolved, but it shows 404 status in response,
//which cannot be handled by ctach block, so response.ok is used in that part

async function getData(){
    try{
        const response = await fetch('https://dog.ceo/api/breeds/image/random')
        if (!response.ok){
            console.log("API is not working properly")    //here, fetch is getting a resolve promise, but wwith a 404 status
        }
        const data = await response.json()
        console.log(data)
    } catch(err){
        console.log("Request rejected")
    } finally{
        console.log("Execution done")
    }
}

getData()