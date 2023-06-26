/* eslint-disable no-multiple-empty-lines */
/* eslint-disable prefer-const */

// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is a good practice. Each time you make some progress in software
// development, you want to save a snapshot.


module.exports = function runChallenges(check) {
  // Ex 1. Read what's written in the email input
  //       Make the function getEmail() return it
  const getEmail = () => {
    // TODO: return the email
    // eslint-disable-next-line no-shadow
    const getEmail = document.querySelector("#email");
    return getEmail.value;
  };

  const getEmail = document.querySelector("#email").value;

  // /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
  const borisesEmail = getEmail();

  // Ex 2. Change the content of the email input by writing your own email address
  const changeEmail = () => {
    // eslint-disable-next-line no-shadow
    const changeEmail = document.querySelector("#email");
    changeEmail.value = "email@email.com";
  };
  const newEmail = changeEmail();

  // Ex 3. Replace the email hint (next to the input) with 'This is my email now'
  //       The text should be emphasized using a <strong> tag
  const replaceHint = () => {
    // eslint-disable-next-line no-shadow
    const replaceHint = document.querySelector("#email-hint");
    replaceHint.innerHTML = "<strong>This is my email now</strong>";
  };
  const newHint = replaceHint();


  // // Ex 4. Add the .blue CSS class to the th elements
  // const blueCssThs = () => {
  //   // eslint-disable-next-line no-shadow
  //   const blueCssThs = document.querySelectorAll("th");
  //   // console.log(blueCssThs);
  //   blueCssThs.forEach((blueCssTh) => {
  //     blueCssTh.classList.add("blue");
  //   });
  //   // return blueCssThs;
  // };
  // blueCssThs();
  document.querySelector("th").forEach((th) => {
    th.classList.add("blue");
  });


  // Ex 5. Count the number of table body rows there are
  //       Make the function teamCount() return it
  const teamCount = () => {
    // TODO: return the number of teams
    const contRows = document.querySelectorAll("tbody > tr");
    return contRows.length;
  };


  // /!\ DO NOT CHANGE THIS LINE - TEST PURPOSES
  const teamCountBeforeAddition = teamCount();

  // Ex 6. Say there is a 15th team added to the table.
  //       Add a row at the bottom, this new team should have zero points.
  const addRow = () => {
    const selectTable = document.querySelector("tBody");
    const createRow = document.createElement("tr");
    createRow.innerHTML = "<td>15</td><td>New teal</td><td>0</td><";
    selectTable.appendChild(createRow);
  };
  // const addNewRow = addRow();
  addRow();


  // Ex 7. Write some code to sum all points given to all teams
  //       Make the function summarizePoints() return it
  const summarizePoints = () => {
    // TODO: return the sum
    let sum = 0;
    const sumPoints = document.querySelectorAll("tbody > tr");
    sumPoints.forEach((sumPoint) => {
      sum += parseInt(sumPoint.lastElementChild.textContent, 10);
    });
    return sum;
  };


  // Ex 8. Change the background color of all `<th>` cells to #DDF4FF
  const changeBackgroundThs = () => {
    // eslint-disable-next-line no-shadow
    const changeBackgroundThs = document.querySelectorAll("th");
    changeBackgroundThs.forEach((changeBackgroundTh) => {
      changeBackgroundTh.style.background = "#DDF4FF";
    });
  };
  changeBackgroundThs();

  // Ex 9. Remove the "Email:" label from the DOM
  // Checking exercise answers. DO NOT MODIFY THIS LINE
  const removeEmailLabel = () => {
    // eslint-disable-next-line no-shadow
    const removeEmailLabel = document.querySelector("label[for='email']");
    removeEmailLabel.remove();
  };
  removeEmailLabel();

  check(borisesEmail, teamCountBeforeAddition, summarizePoints());
};
