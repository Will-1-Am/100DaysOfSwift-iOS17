import Cocoa

//How to handle errors in functions
//Define all error that might happen in the code
//Write a function that works as normal, but can throw one or more of those errors if a serious problem is found
//Run the function handling the errors that come back

// Example - Let's check a users password and say whether it is good or bad
// Step 1 - Define errors that are likely
enum PasswordError: Error {
    case short, obvious
}

// Step 2 - Write a function that will trigger one or more of those errors
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

// Step 3 Run the code
// Create a Do Try Catch
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage.")
} catch {
    print("There was an error \(error.localizedDescription).")
//    It's always best to add the error.localizedDescription so the user can understand what went wrong.  This is not avaiable in this instance since the error is custom to our requirements.
}


// Checkpoint 4
// Write a function that accepts an integer from 1 through 10000 and returns the integer square root of that number.
enum Bounds: Error {
    case outOfBounds, noIntegerSquareRoot
}

func getIntegerSqrt(of number: Int) throws -> Int {
    if number < 1 || number > 10000 { throw Bounds.outOfBounds }
//    var squares = [Int: Int]()
    for i in 1...100 {
        if number == i * i {
            return i
        }
    }
    throw Bounds.noIntegerSquareRoot
//    print(squares)
}

let integer = 100000

do {
    let result = try getIntegerSqrt(of: integer)
    print("The integer square root of \(integer) is \(result)")
} catch Bounds.outOfBounds {
    print("The number is out of bounds")
} catch Bounds.noIntegerSquareRoot {
    print("There is no integer square root for that number.")
}
