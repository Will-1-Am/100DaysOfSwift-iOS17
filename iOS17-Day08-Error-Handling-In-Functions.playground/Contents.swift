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
