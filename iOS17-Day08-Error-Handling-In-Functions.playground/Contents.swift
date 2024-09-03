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
//    The try keyword is a signal to say that normal code execution could end here
    print("Password rating: \(result)")
} catch {
    print("There was an error.")
}
