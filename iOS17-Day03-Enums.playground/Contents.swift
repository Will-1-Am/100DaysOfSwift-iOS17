import Cocoa

//How to create and use enums
//Define enum
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday
print(type(of: day))


//Define a new enum
enum Fuel {
    // Separate different cases with a comma
    case regularUnleaded, superUnleaded, deisel, electric, lpg
}

var fuel = Fuel.deisel
fuel = .electric   // This is permissible since fuel is of type Fuel
