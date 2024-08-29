import Cocoa

//How to use sets for fast data lookup
// Define a set
let actors = Set([
    "Denzel Washington",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson",
])

print(actors)  //["Tom Cruise", "Denzel Washington", "Nicolas Cage", "Samuel L Jackson"]
// A set does not preserve order

// Create a new set
var makesOfCars = Set<String>()

// Add items to the new set
makesOfCars.insert("Ford")
makesOfCars.insert("Ferrari")
makesOfCars.insert("McClaren")
print(makesOfCars)  //["McClaren", "Ferrari", "Ford"]

//Contains, count, sorted
makesOfCars.contains("Fiat")
makesOfCars.count
print(makesOfCars.sorted())
