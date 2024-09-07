import Cocoa

//How to compute property values dynamically
// Stored properties are manually assigned values;
// Computed properties recomputes its value every time they are accessed - they work like functions;

struct Employee {
    let name: String
    var vacation: Int
}

var archer = Employee(name: "Sterling Archer", vacation: 14)
archer.vacation -= 5
print(archer.vacation)
archer.vacation -= 3
print(archer.vacation)


