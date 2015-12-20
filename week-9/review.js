// Calculate Mode

// Write a method mode which takes an Array of numbers or strings as its input and returns an Array of the most frequent values.

// If there's only one most-frequent value, it returns a single-element Array.

// Pseudocode:
// Input: an array of numbers or strings
// Output: the most frequent values (single number or string)

// Steps:

// declare a VARIABLE mode as a FUNCTION
// mode will take one ARGUMENT: a list of numbers or strings

// iterate through the list and store the items in an OBJECT
  // make the VALUE of the OBJECT the item from the list
  // make the PROPERTY of the OBJECT the number of times that VALUE appears in the list

// sort the OBJECT by the PROPERTY
// return the VALUE of the largest PROPERTY

// Initial Solution:

// var mode = function (list) {
//   var hash_list = {};

//   for (var i = 0; i < list.length; i++) {
//     hash_list[list[i]] = (hash_list[list[i]] || 0) + 1;
//   };

//   var sorted_array = []

//   for (var item in hash_list)
//     sorted_array.push([item, hash_list[item]])

//   sorted_array.sort(function(a, b) {return a[1] - b[1]})

//   var mode_array = [];
//   var last_item_index = (sorted_array.length - 1)

//   for (var item in sorted_array)
//     if (sorted_array[item][1] === sorted_array[last_item_index][1]) {
//       mode_array.push(sorted_array[item][0])
//     };

//   console.log(mode_array);
// };

// Refactored Solution

var mode = function (array) {
  var frequency_list = {};

  for (var i = 0; i < array.length; i++) {
    frequency_list[array[i]] = (frequency_list[array[i]] || 0) + 1;
  };

  var sorted_array = []

  for (var word_count_pair in frequency_list)
    sorted_array.push([word_count_pair, frequency_list[word_count_pair]])

  sorted_array.sort(function(pair_a, pair_b) {return pair_a[1] - pair_b[1]})

  var mode_array = [];
  var last_item_index = (sorted_array.length - 1)

  for (var word_count_array in sorted_array)
    if (sorted_array[word_count_array][1] === sorted_array[last_item_index][1]) {
      mode_array.push(sorted_array[word_count_array][0])
    };

  console.log(mode_array);
};

// Driver Code
var all_nums = [1,1,1,2,3,4,4,4 ];
mode(all_nums);

var all_strings = ["apple", "banana", "clementine", "banana", "cherry", "strawberry", "cherry"]
mode(all_strings);

var return_onetwothree = [1,2,3];
mode(return_onetwothree);

// Reflection

// What concepts did you solidify in working on this challenge?

// This made me appreciate Ruby so much more. I solidified the for in loops and the simple for
// loops. I also played around a lot with where I was naming variables and the order of the method.

// What was the most difficult part of this challenge?

// Imagining what I could do with the object vs. the array. Going about it the manual way and not
// being able to take advantage of all of Ruby's built-in methods was tricky.

// Did you solve the problem in a new way this time?

// the overall strategy actually wasn't too different from the Ruby strategy. However, it was
// much more difficult to do the simple things like sort the object based only on the values and
// push between hash-like objects and the array in Javascript.

// Was your pseudocode different from the Ruby version? What was the same and what was different?

// Since the strategy was similar, the pseudocode was similar. The problem is so simple that it's
// actually more difficult, I find, to pseudocode than a more complicated problem would be.
//