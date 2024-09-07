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

//This works but with the loss of the original value assignment

struct NewEmployee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        vacationAllocated - vacationTaken
    }
}

var s_archer = NewEmployee(name: "Sterling Archer", vacationAllocated: 14)

s_archer.vacationTaken += 4
print(s_archer.vacationRemaining)
s_archer.vacationTaken += 4
print(s_archer.vacationRemaining)
