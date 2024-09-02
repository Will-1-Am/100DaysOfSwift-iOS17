import Cocoa

//How to return multiple values from functions
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

isUppercase(string: "fred")
