import Cocoa

///How to unwrap optionals with nil coalescing
///The nil coalescing operator will provide a default value for a nil value
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"]
print(type(of: new))  // Optional<String>

