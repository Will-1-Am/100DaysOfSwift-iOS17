import Cocoa

//var greeting = "Hello, playground"

// Booleans store true or false
let goodDogs = true
var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)

let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

isAuthenticated = !isAuthenticated
print(isAuthenticated)



// How to join strings together
let firstPart = "Hello"
let secondPart = "World"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
// + operator can be used here as well as to do addition, due to operator overloading
