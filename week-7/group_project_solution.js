// Pseudocode:

// input:   an array of integers
// output:  the result of basic calculations (the sum, the mean, the median)

// steps:

// establish a function which takes a list of numbers
// function will calculate the following figures based on the numbers in the list passed:
//    the sum of all numbers in the list
//        1. establish a sum variable
//        2. loop through the array
//        3. add each number in the array to the sum as long as the array
//    the mean of all numbers in the list
//        1. establish a mean variable
//        2. set the mean equal to the quotient of sum variable (established above) divided by
//           the length of the array
//    the median of all numbers in the list
//        1. organize all items the list in order from lowest to highest
//        2. establish a median variable
//        3. if the length of our list is an even number (if the modulus of the length of the
//           list divided by 2 is equal to 0)
//            3.1 the median will be defined as the mean of the 2 middle number
//            3.2 add the middle two indicies together
//            3.3 divide this by 2 and set this quotient to the median variable
//        4. else (if the lenght of our list is an odd number)
//            4.1 the median will be defined as the integer at the very middle index
//            4.2 find the middle index as the length of the list - 1, then divided by 2
//                (this should work because the array is 0-indexed - so an array with an odd
//                  number of elements will have an even number of indicies. For ex: 11 element
//                  index 11 minus 1 is 10, 10 divided by 2 is 5, the 5th element is the median)
// return a sentence to the console to print the sum, mean and median of the list