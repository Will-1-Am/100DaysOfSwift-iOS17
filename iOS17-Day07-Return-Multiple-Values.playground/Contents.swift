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

func getUser2() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}

let user2 = getUser2()
print("Name: \(user2["firstName", default: "?"]) \(user2["lastName", default: "?"])")

// This arguably worse

// Rewriting the code above with tuples:
func getUser3() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
//Tuple names may be omitted in return statement

let user3 = getUser3()
print("Name: \(user3.firstName) \(user3.lastName)")

//When names are not possible, a tuple uses numeric indices to reference values

let (firstName, lastName) = getUser3()
print("Name: \(firstName) \(lastName)")

//This does the same as that defined in user3

//If one or more of the tuple members is not required, substitute an underscore.

//let (firstName, _) = getUser3()
//print("Name: \(firstNamek)")
