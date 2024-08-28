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

// Using + for concatenation is wasteful and intensive
let luggageCode = "1" + "2" + "3" + "4" + "5"

// String interpolation is more efficient & allows different types to be added to the string
let name = "Taylor"
let age = 26  // this is an integer
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

let number = 11
let missionMessage = "Apollo " + String(number) + "landed on the moon."  // This is permissable but string interpolation is still more efficient and readable i.e. - "Apollo \(number) landed on the moon."

// Perform calcuations with string interpolation
print("5 x 5 is \(5 * 5)")
