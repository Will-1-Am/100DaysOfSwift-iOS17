import Cocoa

/// How to handle multiple optionals using optional chaining
/// Optional chaining is a simplified syntax for reading optionals inside optionals
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")




