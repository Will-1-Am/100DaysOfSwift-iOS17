import Cocoa

///How to handle missing data with optionals
///Something that is an optional might have a value or it might not.

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
let peachOpposite = opposites["Peach"]

/// The big question with the value of peachOpposite above is what will it be? It's obvious that opposites does not contain the "Peach" key, but Swift will have to read the dictionary to find out.
/// In this case, since the dictionary is of type String: String, the value type is optional and indicated with a question mark like this: String?
/// All data types could have a optional variation.


/// To read optional data the syntax below is used:
if let marioOpposite = opposites["Mario"] {
    print("Mario opposite is \(marioOpposite)")
}
/// The above is called unwrapping.

/// An else clause can also be added.
var username: String? = nil
if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var num: Int? = nil

if let num = num {
    print(square(number: num))
}

