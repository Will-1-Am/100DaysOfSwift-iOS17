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
