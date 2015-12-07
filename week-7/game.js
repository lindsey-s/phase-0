// Design Basic Game Solo Challenge

// Overall mission: don't touch the moving hot lava - recover the lost Chalice of Everlasting Life

// Goals:       avoid the hot lava
//              recover the lost Chalice of Everlasting Life from the Evil Monkey

// Characters:  Indy
//              The Evil Monkey

// Objects:     Indy (position, health chalicePossession)
//              The Evil Monkey (position, chalicePossession)
//              Hot Lava (position)
//              BONUS RELESASE: Poison Darts (totalNumber, position)

// Functions:   Indy (walk and run)

// Pseudocode:

// declare an object for Indy (our fearless archaelogist) which has the following properties:
//    position (where is he on the map, always starts in same position)
//    health (how many times has he touched the hot lava? He can only survive it twice, 3rd touch is deadly!)
//    chalicePossession (when he gets the chalice from the Evil Monkey - he wins!)

// add methods for Indy so he can:
//    walkForward, walkBackward, walkLeft, walkRight (walking moves 5 spaces at a time)
//    runForward, runBackward, runLeft, runRight(running moves 10 spaces at a time)

// declare an object for the Evil Monkey which has the following properties:
//    position (he moves every time Indy moves, starts in a random position)
//    chalicePossession (he always starts with chalice unless Indy can steal it away)

// when Indy moves around, check to see if he is in the same position as the hot lava or the evil monkey
// if he is not, he is free to move again
// if he hits hot lava, his health goes down by one and the lava moves
// if he is in the same place as the evil monkey he gets that chalice!

// BONUS RELASE: declaire an object for the Poison Darts which has the following properties:
//    totalNumber (the Evily Monkey can only throw 20 total darts in the game)
//    position (where are the posion darts - did they hit Indy? they start at the same position as the Evil Monkey)

// Initial Code

// // the Evil Monkey has the chalice; starts in a random position
// var evilMonkey = {
//   posX: Math.floor((Math.random() * 100) + 1),
//   posY: Math.floor((Math.random() * 100) + 1),
//   chalicePossession: true
// };

// // Hot Lava established in a random position
// var hotLava = {
//   posX: Math.floor((Math.random() * 100) + 1),
//   posY: Math.floor((Math.random() * 100) + 1)
// };

// // Indy!!! Starts at the beginning of the board
// // does not have the chalice; health starts at 3 - can hit the lava 3 times
// var indy = {
//   posX: 0,
//   posY: 0,
//   health: 3,
//   chalicePossession: false,

//   // Indy moves around:
//   move_indy: function(move_type, direction) {
//     if (move_type === 'walk') {
//       if (direction === 'forward') {
//           this.posX +=5;
//       } else if (direction === 'backward') {
//           this.posX -=5;
//       } else if (direction === 'left') {
//           this.posY +=5;
//       } else if (direction === 'right') {
//           this.posY -=5;
//       }
//     } else if (move_type === 'run') {
//       if (direction === 'forward') {
//           this.posX +=10;
//       } else if (direction === 'backward') {
//           this.posX -= 10;
//       } else if (direction === 'left') {
//           this.posY +=10;
//       } else if (direction === 'right') {
//           this.posY -=10;
//       }
//     }
//   // Check to see if Indy found the Evil Monkey or if he hit hot lava
//     if (this.posX === evilMonkey.posX && this.posY === evilMonkey.posY) {
//       // if Indy found the monkey - he gets the chalice!
//       this.chalicePossession = true;
//       evilMonkey.chalicePossession = false;
//     } else if (this.posX === hotLava.posX && this.posY === hotLava.posY) {
//       // if he hit the hot lava, he loses health
//       this.health -= 1;
//     }
//   // check Indy's health here
//     if (this.health === 0) {
//       console.log("Oh no! Indy hit the lava 3 times - he's dead!");
//     } else {
//       // Check to see if Indy has the Chalice - if not give some details about hot lava
//       if (this.chalicePossession) {
//         console.log("You stole the Chalice!!! Game Over! You won!");
//       } else {
//         console.log("Indy's new position is: " + indy.posX + " , " + indy.posY);
//         console.log("Watch out for the Hot Lava! It's at: " + hotLava.posX + " , " + hotLava.posY);
//         console.log("Keep looking for that Evil Monkey - he still has the long lost Chalice of Everlasting Life!");
//       }
//   }

// }
// };

/// DRIVER CODE

// console.log(indy);
// console.log(evilMonkey);
// console.log(hotLava);

// indy.move_indy('run', 'forward');
// indy.move_indy('run', 'left');
// indy.move_indy('run', 'backward');
// indy.move_indy('run', 'left');
// indy.move_indy('run', 'forward');
// indy.move_indy('walk', 'forward');
// indy.move_indy('run', 'forward');
// indy.move_indy('run', 'forward');
// indy.move_indy('walk', 'forward');
// indy.move_indy('run', 'left');
// indy.move_indy('walk', 'left');
// indy.move_indy('run', 'left');

// Refactored Code
// the Evil Monkey has the chalice; starts in a random position
var evilMonkey = {
  posX: Math.floor((Math.random() * 100) + 1),
  posY: Math.floor((Math.random() * 100) + 1),
  chalicePossession: true
};

// Hot Lava established in a random position
var hotLava = {
  posX: Math.floor((Math.random() * 100) + 1),
  posY: Math.floor((Math.random() * 100) + 1)
};

// Indy!!! Starts at the beginning of the board; does not have the chalice;
// health starts at 3 - can hit the lava 3 times
var indy = {
  posX: 0,
  posY: 0,
  health: 3,
  chalicePossession: false,

  // Indy's funtions:
  hitHotLava: function() {
    if (this.posX === hotLava.posX && this.posY === hotLava.posY) {
      this.health -= 1;
      console.log("YOWZA - that hurts! Indy hit hot lava!");
      //move the Lava
      hotLava.posX += 10;
      hotLava.posY += 10; }
  },

  getThatChalice: function() {
    if (this.posX === evilMonkey.posX && this.posY === evilMonkey.posY) {
      this.chalicePossession = true;
      evilMonkey.chalicePossession = false; }
  },

  checkHealth: function() {
    if (this.health === 0) {
      console.log("Oh no! Indy hit the lava 3 times - he's dead!");
    } else if (!(this.chalicePossession)) {
      console.log("Watch out for the Hot Lava! It's at: " + hotLava.posX + " , " + hotLava.posY);
      console.log("Keep looking for that Evil Monkey - he still has the long lost Chalice of Everlasting Life!");
    } else {
      console.log("You stole the Chalice!!! Game Over! You won!"); }
  },

  move_indy: function(move_type, direction) {
    if (this.health === 0) {
      console.log("Indy can't move - he's dead! Start a new game.");
    } else if (direction === 'forward') {
      if (move_type === 'walk') {
        this.posX +=5;
      } else if (move_type === 'run') {
        this.posX +=10; }
    } else if (direction === 'backward') {
      if (move_type === 'walk') {
        this.posX -=5;
      } else if (move_type === 'run') {
        this.posX -=10; }
    } else if (direction === 'left') {
      if (move_type === 'walk') {
        this.posY -=5;
      } else if (move_type === 'run') {
        this.posY -=10; }
    } else if (direction === 'right') {
      if (move_type === 'walk') {
        this.posY +=5;
      } else if (move_type === 'run') {
        this.posY +=10; }
    }
    console.log("Indy's new position is: " + indy.posX + " , " + indy.posY);
    //check to see if he has the chalice, hit hot lava, and is still alive
    this.getThatChalice();
    this.hitHotLava();
    this.checkHealth();
  }
};

// Reflection
// What was the most difficult part of this challenge?

// OMG those curly braces just get in all sorts of places! There are so many of them required and it
// gets really tough to keep track of where they all end and don't end when you're actively editing and
// trying to work out if the code is working or not. So yeah - I learned that syntax is really tricky. I
// would say that it's super important but we already know that - I just learned how squirelly it can be.
// I also learned how to call a function within a function within an object... it was really straightforward!
// So that was a fun moment.

// What did you learn about creating objects and functions that interact with one another?

// As I mentioned, I was able to get the move_indy function to call the indy object's other functions - that
// was so rewarding and surprisingly easy and intuitive. I thought JavaScript was not as intuitive before I
// tried that out.

// Did you learn about any new built-in methods you could use in your refactored solution?
// If so, what were they and how do they work?

// Other than looking up and experimenting with the random and floor Math methods (which I initially copeied
// from the example solution) I didn't look up too many built in methods. I found that the simple structure of
// the game (basically move around searching for another object) really didn't need built in methods. I did set
// myself a bonus challenge which would add posion darts that fired every other time Indy moved - but I just ran
// out of time to implement it and ultimately I couldn't solve the problem of checking how many times Indy had
// moved. If I had more time, I might mess around with the prompt and alert functions instead - maybe that would
// allow me to establish a move counter which tracked how many times the user prompted Indy to move...

// How can you access and manipulate properties of objects?

// the this keyword is crucial when you're working on functions in an object. Otheriwise it's very straightforward
// in JavaScript because variables defined outside of a function or object are global. It's very easy to alter
// or reassign the variables from other functions. I'm really diggin the dot notation used to access properties of
// other objects.