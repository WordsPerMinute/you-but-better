// make sure a token exists

const token = localStorage.getItem("token")
if (!token) {
  window.location.href = "http://localhost:3000/"
}

// wrap whole page in auth check so I have the user's account info to display with etc
fetch(`http://localhost:4000/users/`, {
  method: 'GET',
  headers: {
    "Authorization": `Bearer ${token}`
  }
}).then(response => response.json())
  .then(user => {
    console.log(user)

    const mainTitle = document.querySelector('#custom-title')
    mainTitle.innerText = ` ${user.username}`

  })

// let's play with the DOM and customize this to the user
