const isGood = (soldierType) => {
  // TODO: return `true` if the soldierType is Good.
  // Hint: Hobbits, Elves, Dwarves and Eagles are Good
  const goodSoldier = ["Hobbits", "Elves", "Dwarves", "Eagles"];
  return goodSoldier.includes(soldierType);
};
console.log(isGood("Dwarves"));

const buildSoldierObject = (battlefield) => {
  if (battlefield === "") {
    return {};
  }

  const forces = {};
  const soldiers = battlefield.split(",");
  soldiers.forEach((soldier) => {
    const [type, count] = soldier.split(":");
    forces[type] = Number(count);
  });

  return forces;
};

console.log(buildSoldierObject("Elves:3,Orcs:2"));

const whoWinsTheWar = (battlefield) => {
  const forces = buildSoldierObject(battlefield);

  if (Object.keys(forces).length === 0) {
    return "Tie";
  }

  const goodCount = Object.entries(forces)
    .filter(([type]) => isGood(type))
    .reduce((total, [, count]) => total + count, 0);
  const evilCount = Object.entries(forces)
    .filter(([type]) => !isGood(type))
    .reduce((total, [, count]) => total + count, 0);

  if (goodCount === 0 && evilCount === 0) {
    return "Tie";
  } if (goodCount === evilCount) {
    return "Tie";
  } if (goodCount > evilCount) {
    return "Good";
  }
  return "Evil";
};

module.exports = { whoWinsTheWar, buildSoldierObject, isGood }; // Do not remove this line
