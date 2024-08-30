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
