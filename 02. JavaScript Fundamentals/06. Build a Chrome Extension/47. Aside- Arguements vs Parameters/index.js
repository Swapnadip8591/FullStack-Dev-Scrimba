// What are greeting and name?  param
// What are "Howdy" and "James"?  arg
// What are num1 and num2?  param
// What are 3 and 4?  arg


//.                parameters
function greetUser(greeting, name) { 
    welcomeEl.textContent = `${greeting}, ${name} 👋`
}

//.        arguments
let hi = "Howdy"
greetUser(hi, "James")


function add(num1, num2) {
    return num1 + num2
}

add(3, 4)