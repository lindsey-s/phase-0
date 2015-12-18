// U3.W9:JQuery


// I worked on this challenge [with: Rueben Brandt, Luis DeCastro, Joe Plonsker].
// This challenge took me [2] hours.

$(document).ready(function(){

//RELEASE 1:
  //link the image

//RELEASE 2:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'});

//RELEASE 3:
  //Add code here to select elements of the DOM

bodyElement = $('body');

//RELEASE 4:
  // Add code here to modify the css and html of DOM elements

$('body > h1').css({'background-color': 'orange','border': '2px dotted black', 'visibility': 'visible'});

$('.mascot > h1').html('Chorus Frogs');

//RELEASE 5: Event Handler

$('img').on('mouseover', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://i170.photobucket.com/albums/u265/plkatz/excellent.jpg')
  });

$('img').on('mouseout', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png')
  });

//RELEASE 6: Experiment on your own

$('body > h1').animate({'border-width': '10px'});


})  // end of the document.ready function: do not remove or write DOM manipulation below this.

// What is jQuery?
// jQuery is cool - but I do NOT understand it. I understand it's a library used for JavaScript but
// I do need to revisit the codeacademy course since that was not easily broken out and we didn't
// complete it prior to pairing on this challenge.

// What does jQuery do for you?
// jQuery modifies HTML and CSS elements on the page for you - it makes your webpages interactive!

// What did you learn about the DOM while working on this challenge?
// Nothing I didn't already know from the previous challenges to be honest - but I enjoyed working with
// it in this challenge because I can see how useful it is to test and experiment with jQuery in the DOM.
//