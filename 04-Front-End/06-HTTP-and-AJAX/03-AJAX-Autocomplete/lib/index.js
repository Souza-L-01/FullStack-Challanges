// // TODO: Autocomplete the input with AJAX calls.
// const input = document.querySelector("#search");

// input.addEventListener("keyup", (event) => {
//   fetch(`https://wagon-dictionary.herokuapp.com/autocomplete/${event.target.value}`)
//     .then(response => response.json())
//     .then((data) => {
//         resultsList.innerHTML = "";
//       data.words.forEach((result) => {
//         const wordList = document.createElement("li");
//         wordList.textContent = result;
//         resultsList.appendChild(wordList);
//       });
//     });
// });

const input = document.querySelector("#search");
const resultsList = document.querySelector("#results");

input.addEventListener("input", (event) => {
  const searchValue = event.target.value;

  if (searchValue.trim() === "") {
    resultsList.innerHTML = "";
    return;
  }

  fetch(`https://wagon-dictionary.herokuapp.com/autocomplete/${searchValue}`)
    .then(response => response.json())
    .then((data) => {
        console.log(data)
      resultsList.innerHTML = "";
      data.words.forEach((result) => {
        const listItem = document.createElement("li");
        listItem.textContent = result;
        resultsList.appendChild(listItem);
      });
    });
});
