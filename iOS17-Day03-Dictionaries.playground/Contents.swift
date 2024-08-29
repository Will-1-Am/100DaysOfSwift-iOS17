import Cocoa

//How to store and find data in dictionaries
//Define a dictionary

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville",
]

// Read values by supplying the key
employee2["name"]
employee2["job"]
employee2["location"]

print(employee2["name"])
/* A warning is displayed here:
   Expression implicitly coerced from 'String?' to 'Any'
 Swift is saying that the existance of data here is entirely optional 
 */

// To avoid the warning a default value can be provided
print(employee2["name", default: "Unknown"])


//A string boolean dictionary
var hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

//An integer string dictionary
let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo",
    2024: "Paris",
]

print(olympics[2012, default: "Unknown"])


//Create an empty dictionary ready to receive data
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//Dictionaries do not allow duplicate keys.
//If you try to assign a value to an existing key,
//the previous value will be overwritten
var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luther"
archEnemies["Batman"] = "Penguin"

print(archEnemies["Batman", default: "Unknown"])

// Some dictionary methods available
print(archEnemies.count)
hasGraduated.removeAll()
print(hasGraduated.count)
