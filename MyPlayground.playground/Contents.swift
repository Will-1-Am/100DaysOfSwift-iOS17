import Cocoa

// How to create variables & constants
var greeting = "Hello, playground"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

// Constants are declared with let and it's value does not change
let character = "Daphne"

// Print to debug area (at bottom) to see a variable's value
var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

// Camel case is a common naming convention
let managerName = "Michael Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"

// It's good practice to use constants rather than variables


//How to create strings
let actor = "Denzel Washington"
let filename = "paris.jpg"
let result = "⭐️ You win ⭐️"

// Include back-slashes when you need double quotes inside a string
let quote = "Then he tapped a sign saying \"Believe\" and walked away"


//Triple quotes mark the beginning & end of a multiline string
let movie = """
A day in
the life of an
Apple engineer
"""
//Printing to the debug area shows that the line breaks in the multiline string are respected
print(movie)


//Get the number of characters in a string with the count function
let numberOfCharacters = movie.count
print(numberOfCharacters)  // 38

//Uppercase strings with the uppercase() function
print(result.uppercased())  // ⭐️ YOU WIN ⭐️

//the hasPrefix function will check for a prefix in a string
print(filename.hasPrefix("paris"))  //true
print(filename.hasPrefix("rose"))  //false

// hasSuffix has similar functionality
print(filename.hasSuffix("doc"))  //false

// How to store whole numbers
let score = 10
let billion = 1000000000

// Add thousandths separators
let aBillion = 1_000_000_000

// Arthimetic
let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

// Compound assignment operators
var counter = 10
counter += 5
print(counter)  // 15

counter *= 2    // 30
counter -= 10   // 20
counter /= 2    // 10
