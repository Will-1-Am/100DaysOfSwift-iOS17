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

func getNewUser() -> [String: String] {
    ["firstName": "Taylor", "lastName": "Swift"]
}

let newUser = getNewUser()
print("Name: \(newUser["firstName", default: "?"]) \(newUser["lastName", default: "?"])")

// This arguably worse

// Rewriting the code above with tuples:
func fetchUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}
//Tuple names may be omitted in return statement

let fetchedUser = fetchUser()
print("Name: \(fetchedUser.firstName) \(fetchedUser.lastName)")
