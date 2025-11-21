// Create a function that renders the three team images
// Use a for loop, template strings (``), plus equals (+=)
// .innerHTML to solve the challenge.

const imgs = [
    "images/hip1.jpg",
    "images/hip2.jpg",
    "images/hip3.jpg"
]

const container = document.getElementById("container")

function renderImages(imgArr){
    let imgHtml = ""
    for (let i = 0; i < imgArr.length; i++){
        imgHtml += `<img src="${imgs[i]}" class="team-img">`
    }
    container.innerHTML = imgHtml
}

renderImages(imgs)