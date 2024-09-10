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
    
    init(isElectric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isElectric: isElectric)
    }
}

// The child class cannot be created unless the parent class has a value for all of its variables.  This means our child's custom initializer must supply the values for the parent (in this case).

let car = Car(isElectric: true, isConvertible: false)
car.isConvertible
car.isElectric
