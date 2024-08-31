import Cocoa

// How to use switch statements to check multiple conditions
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
} else if forecast == .rain {
    print("Pack an umbrella.")
} else if forecast == .wind {
    print("Wear something warm.")
} else if forecast == .rain {
    print("School is cancelled.")
} else {
    print("Our forecast generator is broken.")
}

// Problems with the above if/eles if /else:
//1. forecast is repeated many times;
//2. .rain case is checked twice by accident;
//3. .snow case isn't checked;

// These problems can be avoided with a switch statement

switch forecast {
case .sun:
    print("It should be a nice day.")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm.")
case .snow:
    print("School is cancelled.")
case .unknown:
    print("Our forecast generator is broken.")
}
