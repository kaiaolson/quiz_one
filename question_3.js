var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};

for(var prop in majorCities) {
  console.log(prop + " has " + majorCities[prop].length + " main cities.");
}
