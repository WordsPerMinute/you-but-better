// make sure a token exists

const token = localStorage.getItem("token")
if (!token) {
  window.location.href = "http://localhost:3000/"
}

if (token == null) {
  window.location.href = "http://localhost:3000/"

}

//logout button
const logout = document.querySelector(".logout")
logout.addEventListener("click", () => {
  localStorage.removeItem("token")
  window.location.href = "http://localhost:3000/"
})



// wrap whole page in auth check so I have the user's account info to display with etc
fetch(`http://localhost:4000/users/`, {
  method: 'GET',
  headers: {
    "Authorization": `Bearer ${token}`
  }
}).then(response => response.json())
  .then(user => {
    // let's play with the DOM and customize this to the user
    const mainTitle = document.querySelector('#custom-title')
    const userPhoto = document.querySelector('.user-photo')
    userPhoto.src = `${user.photo}`
    mainTitle.innerText = ` ${user.username}`
    try {
    user.goals.forEach(goal => {
      let goalsDiv = document.querySelector('.user-goals')
      createGoalsCards(goal, goalsDiv)
    })
  }
  catch(error) {
      window.location.href = "http://localhost:3000/"
      }
    createFriendCards(user)


  })

function createFriendCards(user) {
  fetch(`http://localhost:4000/friend_goals/`, {
    method: 'GET',
    headers: {
      "Authorization": `Bearer ${token}`
    }
  }).then(response => response.json())
    .then(users => {
      let goalsDiv = document.querySelector('.friends-list')

      users.forEach(friend => {
        if (friend.id != user.id){
          let aFriendDiv = document.createElement('div')
          aFriendDiv.classList.add('friend-card')
          aFriendDiv.innerHTML = `
          <img class="friend-photo" src="${friend.photo}"/>
          <p class="friend-username">${friend.username}</p>
          <button type="button"><ion-icon name="mail-outline"></ion-icon></button>
          <div class="friend-bio-div"><p class="friend-bio">${friend.bio}</p></div>
          `
          friend.goals.forEach(goal => {
            createGoalsCards(goal, aFriendDiv)
          })
          goalsDiv.append(aFriendDiv)
        }
      })
    })
}


function createGoalsCards(goal, divToAppend){
  let cardDiv = document.createElement('div')
  cardDiv.classList.add('card')
  cardDiv.innerHTML = `
    <div class="card-header">${capitalizeFirstLetter(goal.title)}</div>
    <div class="card-main">
    <i class="material-icons">sports_mma</i>
      <div class="main-description">
      <h4>Specific Goal</h4>
      <p>${goal.specific_goal}</p>
      <h4>Why?</h4>
      <p>${goal.why}</p>
      <h4>Current Action</h4>
      <p>${goal.current_action}</p>
      <h4>Months to complete</h4>
      <p>${goal.months}</p>
      </div>
    </div>
  `
  divToAppend.append(cardDiv)
}

  function capitalizeFirstLetter(string) {
    return string.charAt(0).toUpperCase() + string.slice(1);
}
