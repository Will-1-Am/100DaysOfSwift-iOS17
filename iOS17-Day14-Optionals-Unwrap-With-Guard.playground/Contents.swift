import Cocoa

/// How to unwrap optionals with guard
/// Guard let is an alternative to using if let.

func printSquare(of number: Int?) {
    guard let number = number else {
        /// This body is run if no value is contained in number
        print("Missing input")
        return
    }
    print("\(number) x \(number) is \(number * number)")
}

/// Consider the following:
var myVar: Int? = 3

if let unwrapped = myVar {
    /// Run if myVar has a value inside
}

guard let unwrapped = myVar else {
    /// Run if myVar doesn't have a value inside
}
