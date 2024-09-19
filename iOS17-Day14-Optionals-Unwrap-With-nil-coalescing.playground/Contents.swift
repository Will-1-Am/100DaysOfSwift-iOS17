import Cocoa

///How to unwrap optionals with nil coalescing
///The nil coalescing operator will provide a default value for a nil value
let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

let new = captains["Serenity"] ?? "N/A"
print(type(of: new))  // Optional<String> w/o ??  String with ?? "N/A"
/// If there was a value assigned to the key, it would be returned instead.

///Nil coalescing works with other optional types also.
let tvShows = ["Archers", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"  ///The randomElement method will return an optional string if one exists

