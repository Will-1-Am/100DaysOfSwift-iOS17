import Cocoa

//How to create and use closures
func greetUser() {
    print("Hi there!")
}

greetUser()
var greetCopy = greetUser  // Creating a copy of the function the () are not included.  If the () are included the assignment means that the function should be executed and the value stored in greetCopy.
greetCopy()
