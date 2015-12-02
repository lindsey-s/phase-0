// JavaScript Olympics

// I paired [with Joe Plonsker, Rueben Brandt, Chris Shahin & Luis De Castro] on this challenge.

// Bulk Up

var phelps = {
  name:'Michael Phelps',
  event:'100 M Freestyle'
}
var eminem = {
  name: 'Marshall Mathers',
  event: '100 Second Freestyle'
}
var hughes = {
  name:'Susan Hughes',
  event:'Ladies Singles'
}

var athletes = [phelps, hughes, eminem];
  var name = 'name';
for (var index = 0; index < athletes.length; index+=1){
  console.log(athletes[index][name] + " won "+ athletes[index]['event']);
}

// Jumble your words

function reverse_string(string) {
  var backwards = '';
  for (var i = string.length - 1; i >= 0; i--){
    backwards += string[i];
  }
  console.log(backwards);
}
reverse_string("Racecar")

function reverser(array){
  var newArray = [];

for (var index = 0; index < array.length; index+= 1) {
  newArray.push(array[index].split('').reverse().join(''));
}
  console.log(newArray);
}

var name = ["Reuben", "Luis", "Joe"];
reverser(name)

// 2,4,6,8

var all_nums = [1, 2, 3, 4, 5, 6, 7];

function even_numbers(list){
  var evenArray = [];
  for (var index = 0; index < list.length; index++){
    if (list[index] % 2 === 0){
      evenArray.push(list[index]);
    }
  }
     console.log(evenArray);
}

even_numbers(all_nums);

// "We built this city"

var Athlete = function(name,age,sport,quote) {

  this.name  = name;
  this.age   = age;
  this.sport = sport;
  this.quote = quote;

}

// DRIVER CODE

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")

console.log(michaelPhelps.constructor === Athlete)

console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

// What JavaScript knowledge did you solidify in this challenge?

// Getting good at looping and incrementing. Also getting a lot more practice adding variables.
// I'm finding that JavaScript feels much more rudimentary. I'm missing my built in Ruby
// methods!

// What are constructor functions?

//

// How are constructors different from Ruby classes (in your research)?

//