import Cocoa

// How to create custom initializers
//Initializers are special functions inside structs designed to create initial values for all the properties inside the struct.
//By the time the initializer finish you must ensure that every property in the struct has a value.

struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) {
        self.name = name
        self.number = number
    }
}

let player = Player(name: "Megan R", number: 15)
// The above uses the memberwise initializer - a fancy way of saying it accepts property values in the order in which they were defined.
