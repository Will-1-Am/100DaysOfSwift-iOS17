import Cocoa

//Static properties and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
    
//    The static property and method belong to the School struct itself and not any particular instance of it.
}


School.add(student: "Taylor Swift")
print(School.studentCount)


// Self can be used to access static properties and methods within a struct - self with a lowercase 's' is different and refers to a value only.  Self with a capital 'S' refers to a type.
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "http://www.hackingwithswift.com"
}

AppData.homeURL

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Fred", password: "f1in5+one")
}

Employee.example.self


// Checkpoint 6
// Create a new struct to store information about a car.  Include:
// - its models
// - number of seats
// - current gear
// - add a method to change gears up or down
// - Think about variables & access control
// - Don't allow invalid gears - 1...10 should be sufficient

struct Car {
    let model: String
    let seats: Int
    private(set) var currentGear = 1
    
    mutating func changeGear(_ direction: String) {
        if direction == "up" && currentGear < 10 {
            currentGear += 1
        } else if direction == "down" && currentGear > 1 {
            currentGear -= 1
        }
        print("Current gear is \(currentGear)")
    }
}

var car = Car(model: "Ka", seats: 4)
car.currentGear
car.changeGear("down")
car.changeGear("down")
car.changeGear("down")
car.changeGear("up")
car.changeGear("up")
car.changeGear("up")
//car.currentGear = 20
car.changeGear("up")
car.changeGear("down")
car.changeGear("down")
car.changeGear("down")
car.changeGear("down")
car.changeGear("down")
car.changeGear("down")
