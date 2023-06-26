// TODO: write your code here!
// eslint-disable-next-line max-len
// callback = specify what should happen after an operation. And it is anoperation and it is used as an argument.
const buttons = document.querySelectorAll(".clickable");


const clickedButton = (event) => {
  event.currentTarget.classList.toggle("active");
};

const bindButton = (button) => {
  button.addEventListener('click', clickedButton);
};

buttons.forEach(bindButton);

// buttons.forEach((button) => {
//   button.addEventListener("click", (event) => {
//     button.classList.toggle("active");
//   });
// });

// function toggleActiveClass() {
//   this.classList.toggle("active");
// }

// sportBoxes.forEach((box) => {
//   box.addEventListener("click", toggleActiveClass);
// });

console.log(buttons);


// buttons.forEach((button) => {
//     button.addEventListener('click', (event) => {
//       console.log(event.currentTarget);
//     });
//   });