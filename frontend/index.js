const loginButton = document.querySelector('#login-button')
const loginDiv = document.querySelector('.login-div')

const createButton = document.querySelector('#create-button')
const createDiv = document.querySelector('.create-account-div')


loginButton.addEventListener('click', () => {
  toggleShow(loginDiv)
})

createButton.addEventListener('click', () => {
  toggleShow(createDiv)
})

const allForms = document.querySelectorAll('.form')
function toggleShow(elementToToggle) {
  const target = event.target
  elementStyle = elementToToggle.style.display
  allForms.forEach(form => {
    form.style.display = "none"
  })
  // elementToToggle.style.display = "block"

  if (elementStyle == "block") {
    elementToToggle.style.display = "none"
  } else {
    elementToToggle.style.display = "block"
  }

}

const loginSubmit = document.querySelector('.login-form')
const createSubmit = document.querySelector('#create-submit')
console.log("k", loginSubmit)

loginSubmit.addEventListener('submit', () => {
  event.preventDefault()
  console.log(event.target)

  const formData = new FormData(event.target)
  const user = {
    username: formData.get("username"),
    password: formData.get("password"),
  }

  fetch('http://localhost:4000/login', {
    method: 'POST',
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify(user)
  }).then(response => response.json())
  .then(response => {
    console.log("Are you my token?", response.token)
    localStorage.setItem("token", response.token)
  }).then(window.location.replace("http://localhost:3000/account.html"))


})
