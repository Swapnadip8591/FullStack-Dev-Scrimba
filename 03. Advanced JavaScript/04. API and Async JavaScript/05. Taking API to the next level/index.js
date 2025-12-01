/*
Challenge:
Make a fetch request to get all of the available posts. 
And I've just put here remember to handle all errors.
*/
async function getData() {
    try{
        const response = await fetch('https://apis.scrimba.com/jsonplaceholder/posts')
        data = await response.json()
        console.log(data)
    } catch(err){
    console.log("Request rejected") 
    } 
}

getData()