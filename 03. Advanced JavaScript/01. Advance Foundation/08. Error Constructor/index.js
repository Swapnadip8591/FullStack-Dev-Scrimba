function checkUsername(username){
    if (username){
        console.log(username)
    } else{
        console.log(new Error('Username not provided'))  //error constructor
        console.log("Executing...")
    }
}
checkUsername()