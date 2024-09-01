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

//Loop over an inclusive range 1 to 5
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

//Loop over a non-inclusive range 1 up to 5
for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}
