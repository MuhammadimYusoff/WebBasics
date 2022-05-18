
// Create random number between 1 - 10
let calc = Math.floor((Math.random() * 10) + 1);

// Get Random Number within a range
let getRandomNumber = function (start, range) {
    let getRandom = Math.floor((Math.random() * range) + start);
    while (getRandom > range) { // The loop will rerun if the number is outside of the range given
        getRandom = Math.floor((Math.random() * range) + start);
    }
    return getRandom;
}

console.log(calc);
console.log(getRandomNumber(500, 1000));
getRandomNumber(500, 1000);