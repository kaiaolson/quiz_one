var isPrime = function(n) {
  for(var x = 2; x <= n; x++) {
      if (n === x) {
        return true;
      } else if (n % x === 0) {
        return false;
      }
    }
};


console.log(isPrime(1));
console.log(isPrime(2));
console.log(isPrime(3));
console.log(isPrime(4));
console.log(isPrime(5));
console.log(isPrime(6));
console.log(isPrime(7));
