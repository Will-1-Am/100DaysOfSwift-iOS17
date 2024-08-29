import Cocoa

//How to store ordered data in arrays
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// Reading array are done by index
beatles[0]
numbers[3]
temperatures[2]
// NOTE: If index does not exist within the array - crashy crashy!

// Add items to existing array
beatles.append("Frank")
print(beatles)

beatles.append("Tim")
beatles.append("Wendy")
beatles.append("Mike")
print(beatles)
// NOTE: Arrays can only hold one type of data
//temperatures.append("Chris")
// The above line will result in the following error
//Cannot convert value of type 'String' to expected argument type 'Double'


// Create an array by specifying a type explicitly
var scores = Array<Int>()  // Parentheses allow customisation e.g. add 1000 zeros to an array
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

// Alternative way of creating arrays
var albums = [String]()
albums.append("Diamond Life")
albums.append("Promise")
albums.append("Stronger Than Pride")

// Swift can employ type inference to determine datatype

// Find number of items in an array
beatles.count  //8
