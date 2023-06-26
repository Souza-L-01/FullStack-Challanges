const sumOfNegative = (numbers) => {
  // TODO: You are getting a `numbers` array. Return the sum of **negative** numbers only.
  let sum = 0;
  numbers.forEach((number) => {
  // for (let i = 0; i < numbers.length; i += 1) {
    if (number < 0) {
      sum += number;
    }
  });
  return sum;
};

module.exports = sumOfNegative; // Do not remove.
console.log(sumOfNegative([-4, 5, -2, 9]));
