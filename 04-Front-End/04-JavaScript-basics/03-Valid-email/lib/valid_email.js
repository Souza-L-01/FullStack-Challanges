const valid = (email) => {
  // TODO: return true if the `email` string has the right pattern!
  const validEmail = /^[^\s]+@[^\s]+\.[^\s]{2,}$/;
  return validEmail.test(email);
};

module.exports = valid; // Do not remove.
console.log(valid('boris.lewagon.org'));
console.log(valid('boris@lewagon.org'));
