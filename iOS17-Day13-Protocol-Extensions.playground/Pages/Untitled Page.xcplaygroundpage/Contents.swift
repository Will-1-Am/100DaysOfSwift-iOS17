import Cocoa

/// How to create and use protocol extensions
/// Protocol extensions extend functionality of protocols meaning that any types conforming to the protocol will automatically get the extended functionality.
extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

/// Now we can write (which is arguably much more readable):
if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

/// This is great but what about Sets, Dictionaries, Array etc conform to a protocol called Collection.
/// Extending the protocol provides all conforming types with the same functionality and leads to Protocol Oriented Programming (POP).

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    /// The function declaration below allows types to declare their own implementation or rely on this one by default.
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()

/// Checkpoint 8
/// Create a protocol that describes a building including:
///  - a property storing how many rooms it has;
///  - the cost as an integer;
///  - string storing the name of the estate agent selling the building;
///  - a method for printing the sales summary of the building
///  - create two structs House & Office that conform to building protocol
///

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var estateAgent: String { get }
    func salesSummary() -> Void
}

extension Building {
    func salesSummary() {
        print("The building costs £\(cost) has \(rooms) rooms and is being sold by \(estateAgent).")
    }
}

struct House: Building {
    var rooms: Int
    
    var cost: Int
    
    var estateAgent: String
}

let house = House(rooms: 6, cost: 250_000, estateAgent: "Frankels Estate Agents")
house.salesSummary()


struct Office: Building {
    var rooms: Int
    
    var cost: Int
    
    var estateAgent: String
}

let office = Office(rooms: 250, cost: 5_000_000, estateAgent: "Zircas Properties")
office.salesSummary()
