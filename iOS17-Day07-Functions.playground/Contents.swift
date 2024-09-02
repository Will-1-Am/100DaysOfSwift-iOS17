import Cocoa

//How to reuse code with functions
func showWelcome() {
    print("Welcome to my app!")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// func is the keyword the identifies a function
// func is followed by a name and parentheses that contain parameters, if any
// Curly brackets surround the function body - the actions that will be completed when the function is called

// To run the function, it is called by its name with open & closed parentheses

showWelcome()

// Another example
let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

//isMultiple(of:) is a function belonging to Integer which takes an argument without which the function would have no meaning


func printTimeTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimeTables(number: 5, end: 20)
