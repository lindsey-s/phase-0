// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var andrewAge = 29
console.log(andrewAge + 1)

/*
Favorite Food - commented out solution because it doesn't run in my terminal, but ran in my chrome console

var favoriteFood = String(prompt("What is your favorite food?"));
console.log("Hey! That\'s my favorite food too!")
*/

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle
for (var hash = "#" ; hash.length <= 7; hash += "#")
  console.log(hash);

//FizzBuzz

var counter = 0;

while (counter < 100) {
  counter = counter + 1;
  if (counter % 5 === 0 && counter % 3 === 0)
    console.log("FizzBuzz");
  else if (counter % 3 === 0)
    console.log("Fizz");
  else if (counter % 5 === 0)
    console.log("Buzz")
  else
    console.log(counter);
}

// Functions

// Complete the `minimum` exercise.

function min(number1, number2) {
  if (number1 < number2)
      return number1;
    else
      return number2;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = { name: ["Lindsey Stevenson"],
age: 29,
favorite_foods: ["cookies", "chocolate", "thai food"],
quirk: ["I love to knit. So. Much."] }

console.log(me.name)