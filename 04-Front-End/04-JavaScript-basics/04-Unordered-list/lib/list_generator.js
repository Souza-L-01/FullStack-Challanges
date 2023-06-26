const listItem = (content) => {
  return `<li class="list-group-item">${content}</li>`;
};

const unorderedList = (items) => {
  const listItems = items.map(item => listItem(item)).join('');
  return `<ul class="list-group">${listItems}</ul>`;
};

// const unorderedList = (items) => {
//   let listItems = '';
//   items.forEach((item) => {
//     listItems += listItem(item);
//   });
//   return `<ul class="list-group">${listItems}</ul>`;
// };

module.exports = { listItem, unorderedList }; // Do not remove.
console.log(listItem("milk"));
console.log(unorderedList(["milk", "butter", "bread"]));
