import Cocoa

// How to add initializers for classes
// If a child class has initializers, it must always call the parent's initializers after assigning values to its variables.

class Vehicle {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isConvertible: Bool) {
        self.isConvertible = isConvertible
    }
}
