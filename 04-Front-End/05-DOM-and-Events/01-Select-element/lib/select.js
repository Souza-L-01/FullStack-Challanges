// TODO 1. Open the `index.html` file and set an id to the France <li>
// (nothing to write in this file for this step)

const franceElement = () => {
  // eslint-disable-next-line no-shadow
  const franceElement = document.querySelector("li#france");
  return franceElement;
  // TODO 2: select the France list item and return it!
};

module.exports = franceElement; // Do not remove.
console.log(franceElement());
