import Cocoa

//How to return multiple values from functions
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

isUppercase(string: "fred")

func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print("Name: \(user[0]) \(user[1])")

//This works, but not ideal - what do the indices mean and what if the array changes?
