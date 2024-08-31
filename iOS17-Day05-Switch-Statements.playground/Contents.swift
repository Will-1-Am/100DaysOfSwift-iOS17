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
