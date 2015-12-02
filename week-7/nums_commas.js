// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: Regina Wong, Chris Shahin, Lindsey Stevenson, Rueben Brandt, Luis De Castro

// Pseudocode
// input: a number
// output: a string with commas in the right places

// steps:
// add number into a list where each digit is in a separate index
// check the size of the list (how many digits are there)
// if there are fewer than three digits:
//    return the number as a string
// if there are more than three digits:
//    loop through the list from the back
//    insert a comma every three digits
// return the number as a string with commas

// Initial Solution

function separateComma(number){

  var array = number.toString().split("");


  if ( array.length >=4 ) {
    for(var x = array.length-4; x >= 0; x-=3) {
      array[x] = array[x] + ','
    }
    console.log(array.join(""))
  }
  else{
    console.log(number);
  }
}

// Refactored Solution

function separateComma(number) {
  var number_array = number.toString().split("");

  for(var x = number_array.length-4; x >= 0; x-=3) {
      number_array[x] = number_array[x] + ',' }
    console.log(number_array.join("")); }

// Your Own Tests (OPTIONAL)

separateComma(555)
separateComma(77777)
separateComma(100100100)

// Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// I felt like it was simpler to approach this problem with a JavaScript framework. I also
// think having solved this problem before and having much more experience looping now
// really helped us think through pseudocode that informed our initial solution.

// What did you learn about iterating over arrays in JavaScript?

// I learned that basically you have to use a for or while loop to iterate. I'm sure there
// are additional iterator functions we'll learn.

// What was different about solving this problem in JavaScript?

// Haha... I feel like not too much.

// What built-in methods did you find to incorporate in your refactored solution?

// we used .join and .split as well as .split in our initial solution and didn't find
// too much more in our refactoring.