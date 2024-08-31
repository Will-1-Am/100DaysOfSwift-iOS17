import Cocoa

//How to check a condition is true or false
let someCondition = true
if someCondition {
    print("Do something")
}

let score = 85
if score > 80 {
    print("Great job!")
}

// Some very basic examples
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, wed don't need roads.")
}

if percentage < 85 {
    print("Sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}


//Compare strings
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"
if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


//If adding an item to an array makes it contain more than three items remove the oldest one.
var numbers = [1, 2, 3]
numbers.append(4)
if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)


//If user is asked to enter a name and they enter nothing, return the string "Anonymous"
//First introduce equality operator & not equal to operator
let country = "Canada"
if country == "Australia" {
    print("G'Day!")
}

let name = "Taylor Swift"
if name != "Anonymous" {
    print("Welcome, \(name)")
}

var username = "taylorswift13"
if username == "" {
    username = "Anonymous"
}

print("Welcome, \(username)")


//This is another way of writing the above condition
if username.count == 0 {
    username = "Anonymous"
}

print("Welcome, \(username)")

//And another way
if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")


//Enums can be comparable based on position??
enum Sizes: Comparable {
    case small, medium, large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)
