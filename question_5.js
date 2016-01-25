var evenNum = function(n) {
  var evenNumbers = [];
  for(x = 1;evenNumbers.length < n; x++) {
    if (x % 2 === 0) evenNumbers.push(x);
  }
  return evenNumbers;
};


console.log(evenNum(10));
console.log(evenNum(5));
console.log(evenNum(2));
console.log(evenNum(20));
