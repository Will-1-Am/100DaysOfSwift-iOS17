import Cocoa

// How to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}


//Iterate over a range
for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}


//A nested loop
for i in 1...12 {
    print("The \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    
    print()
}