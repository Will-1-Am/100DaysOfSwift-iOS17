import Cocoa

// How to create custom initializers
//Initializers are special functions inside structs designed to create initial values for all the properties inside the struct.
//By the time the initializer finish you must ensure that every property in the struct has a value.

struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...99)  // Assing a random number
    }
}

let player = Player(name: "Megan R")
print(player.number)
// The above uses the memberwise initializer - a fancy way of saying it accepts property values in the order in which they were defined.

// Other methods can be called from inside the initializer, this can only be done once all the other stored properties have been assigned values.

// Multiple initializers can also be used in structs.
