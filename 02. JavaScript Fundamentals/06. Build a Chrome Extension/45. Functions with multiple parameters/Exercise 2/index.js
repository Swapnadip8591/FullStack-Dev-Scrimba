const welcomeEl = document.getElementById("welcome-el")

function greetUser(greeting, name, emote) {
    // Rewrite the expression using template literals
    welcomeEl.textContent = `${greeting}, ${name} ${emote}`
}

greetUser("Howdy", "James", "😝")