# 4.2 Reflection

## What does `puts` do?

`puts` simply prints whatever follows it to the console. It's important to understand that it actually **returns** `nil`, which means that Ruby won't store anything for later when you use `puts` instead of `return`.

## What is an integer? What is a float?

An integer is any whole number, negative or positive. A float is a floating point integer, or, an integer with any  number of decimal places specified. 2 is an integer and 2.0 is a float.

## What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?

Float division is the normal division you are used to from calculators and math class. 5/2 is 2 and a half, or 2.5. To make Ruby express this, you **must** use floats. In this case, you would use 5.0/2.0 in order to get 2.5 as the result.

Otherwise, if you just use the integers 5 and 2, the result of this integer division is 2. It may be most helpful to think of this as rounding down to the nearest whole number - and that is certainly true - but it's important to understand the implications here. Integer division is saying that 2 fits into 5 2 times only. This is useful when you think about things that cannot be divided.

## Hours in a year:

```
puts 24 * 365
8760
=> nil
```

## Minutes in a decade:

```
puts (60 * 8760) * 10
5256000
=> nil
```

## How does Ruby handle addition, subtraction, multiplication, and division of numbers?

Ruby performs integer arithmetic on fixed number variables unless those variables are explicitly converted to or specified as floating point integers.

## What is the difference between integers and floats?

Integers are whole numbers and floats have decimal points. You must remember that Ruby does **not** append the .0 to any whole number, it simply keeps track of that number as an integer. In order for Ruby to consider  number as a float, you must convert an integer to a float with .to_f method or initially specify the number as a float when assigning the variable (like so: num1 = 2.0)

## What is the difference between integer and float division?

Integer division, as I mentioned above, is not the division you would expect from a calculator. Your calculator always completes float division but in Ruby you must specify your numbers are floats to get this result. Please see the above description for more detail.

## What are strings? Why and when would you use them?

Strings are a series of characters (they may contain special characters, spaces, numbers and letters) that are set between single or double quotes. We see them most often at variable assignment like so:

`my_string = "Hello Chorus Frogs 2016!"`

You would use a string wherever you would like Ruby to keep track of information for you, whether it's because it's long and cumbersome to type or you will be repeating it often, you can assign it to a variable and only type the variable name in future when you want to use the string.

## What are local variables? Why and when would you use them?

Local variables are variables that are stored in your method. You will use these variables over and over again in that particular method so it makes sense to define them and use the variable name as shorthand as you write your program (as outlined above). But you cannot access these local variables in other programs or methods even on your own computer.

## How was this challenge? Did you get a good review of some of the basics?

This challenge was really exciting because I feel like we're getting to the meat of programming now. Huzzah! However, each challenge had me reading and researching more than recalling and applying previous learnings. I found that chapters 2, 3 and 4 of Chris Pine's awesome book and the videos and postings so far in Canvas did not prepare me for the challenges. I had to revisit other chapters in _Learn to Program_ and on CodeAcademy to make sure I was correctly remembering the material. I then spent a chunk of time really understanding why my programs were passing the rspec test.