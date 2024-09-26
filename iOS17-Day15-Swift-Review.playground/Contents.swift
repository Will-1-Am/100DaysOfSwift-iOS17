import Cocoa

/// Swift Review
/// Quotes - to include quotes within a quote preceed the quotation mark with a back slash
let quote = "He tapped a sign saying \"Beleive\" and walked away."

/// Toggle a boolean value
var skyIsBlue = false
skyIsBlue.toggle()

///Set a default value when reading dictionary keys
let employee = [
    "name": "Taylor",
    "job": "Singer",
]

employee["job", default: "Unknown"]

/// Contains method runs almost instantaneously on Sets
var mySet = Set([1, 1, 3, 5, 7, 9])
mySet.insert(30)  /// insert is used instead of append since there is no order to append to.
mySet.contains(11)
