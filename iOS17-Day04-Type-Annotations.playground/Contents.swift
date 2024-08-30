import Cocoa


// How to use type annotations
let surname = "Lasso"
let score = 0
// Swift uses type inference to determine data type

// The data type can be set explicitly
let name: String = "Fred"
let gear: Int = 4

//Some common examples
let balance: Double = 0
var isAuthenticated: Bool = true

//More complex examples
var albums: [String] = ["Red", "Fearless"]
var user: [String: String] = ["id": "@twostraws"]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Foundation",
    "Girl, Woman, Other"
])
//Type annotation is not strictly required since Swift will work out the type from the data

//If an empty array was required, it could be specified as follows:
var soda: [String] = [String]()
//or
var cities: [String] = []
//or
var clues = [String]()


enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
// Swift knows the type of style now meaning it is not necessary to restate it when assigning a new value
style = .dark

//Checkpoint 2
let trainers = ["Running", "Walking", "HITT", "Running", "Track"]
let trainersSet = Set(trainers)  // Creat a set of unique items
print("There are \(trainers.count) items in the array consisting of \(trainersSet.count) unique items.")
