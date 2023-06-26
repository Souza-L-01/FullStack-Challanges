const displayAlertOnButtonClick = () => {
  const button = document.querySelector(".btn.btn-lg.btn-success"); // Replace ".big-green-button" with the appropriate selector for your button

  button.addEventListener("click", () => {
    alert("Thank you!");
  });
};

displayAlertOnButtonClick(); // Do not remove!
