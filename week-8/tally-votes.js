// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge by myself
// This challenge took me [3] hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// tests 1 - 4: Bob should receive 3 votes for president. etc - GOAL:
  // Bob's name must be pushed into voteCount as a property
  // each vote for Bob should increment Bob's value by 1

  // start by iterating over the votes object
    // call each property in the votes object the voter
  // access the voter's vote values (values of the voter property)
    // access the values of the office properties in the voter, store this as new local variable
  // if else branch to add vote to voteCount object
    // if the newVote does not appear in that office in voteCount object, add it and set it equal to 1
    // else increment that newVote by 1

// tests 5 - 8: Louise should be elected President, etc - GOAL:
  // the officers object must have only one name per office (one value per property)
  // the value should be the name with the highest value from the voteCount object

  // voteCount object is nested - each property is an office
  // the value of each office property is another object
  // the property is the name
  // the value is the number of Votes

  // start by iterating over the voteCount object
    // call each property in the voteCount object office
  // store new variable at 0 (this will hold the value of the votes - call it tally)
  // access the office's values (person voted for, call this name)
  // if the tally (aka vote) for the name is greater than current tally (0)
    // add that name to officers object

  // this will not work if there's a tie, it will return the second (or last) name with the
  // highest vote count

// __________________________________________
// Initial Solution

for (var voter in votes) {
  for (var office in votes[voter]) {
    var newVote = votes[voter][office];

    if (!voteCount[office][newVote]) {
      voteCount[office][newVote] = 1;
    } else {
      voteCount[office][newVote] += 1;
    }
  }
};

for (var office in voteCount) {
  var tally = 0;
  for (var name in voteCount[office]) {
    var person = voteCount[office][name]
    if (person > tally) {
      tally = person;
      officers[office] = name; };
  }
};

// __________________________________________
// Refactored Solution

// I tried really hard to combine this into one function but couldn't get there

// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
// Were you able to find useful methods to help you with this?
// What concepts were solidified in the process of working through this challenge?

// I learned again to work carefully with nested objects - for me it's always about knowing
// what kind of object (structure wise) you are working with - and constantly logging to the
// console so you can visualize what structure you're working on. This challenge also helped
// me conceptualize what structure I wanted the data to be in and then strategizing how to
// get it there.

// I took the advice of the challenge and stuck to for ... in loops. Looking at my solution
// I might be able to refactor and use some built-in javascript methods but I'm finding those to
// be so bulky looking that it really decreases readability for me. I prefer this simple code.
// As I commented above, however, I was not able to refactor very much. I wanted to get it into
// one single functiont which you could call with any set of votes but just couldn't get workable
// code after 45 minutes of trying - so I had to move on.

// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)