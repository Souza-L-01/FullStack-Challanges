// const buttonChange = document.querySelector("#clickme");

// buttonChange.addEventListener("click", () => {
//   // Disable the button
//   buttonChange.disabled = true;

//   // Change the button text
//   buttonChange.textContent = "Bingo!";

//   // Play the sound
//   const sound = new Audio("sound.mp3");
//   sound.play();
// });

const buttonChange = document.querySelector("#clickme");

buttonChange.addEventListener("click", () => {
  buttonChange.disabled = true;
  buttonChange.textContent = "Bingo!";
  const sound = new Audio("sound.mp3");
  sound.play();
});
