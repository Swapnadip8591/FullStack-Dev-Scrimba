/**
Challenge: 

1. Fetch a random activity from the Bored API
url: https://apis.scrimba.com/bored/api/activity

2. Display the text of the activity using async/await
*/

// fetch('https://apis.scrimba.com/bored/api/activity')
//     .then(response => response.json())
//     .then(data => console.log(data))

async function geTData(){   //either we have to use async func. for await or we need to make script typr module
    const response = await fetch('https://apis.scrimba.com/bored/api/activity')
    const data = await response.json()
    console.log(response)
    console.log(data)
}

geTData()