import Cocoa

//How to create you own structs
//Create custom datatypes with their own variables & functions

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)


print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

/* All properties in structs are constant.  To mutate them, their mutating functions must be marked mutating */
struct Employee {
    let name: String
    var vacationRemaining: Int = 14
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on holiday!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
    
}

// An instance of a struct using a mutating function needs to be created as a variable not a constant
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

// Initializing a struct is a lot like calling a function
let a = 1
let b = 2.0
let c = Double(a) + b   // Double is a Swift struct

let kane = Employee(name: "Lana Kane")
var poovey = Employee(name: "Pam Poovey", vacationRemaining: 35)
poovey.takeVacation(days: 10)
print(poovey.vacationRemaining)
