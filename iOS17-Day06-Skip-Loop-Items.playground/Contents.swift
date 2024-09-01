import Cocoa

//How to skip loop items with break and continue
// Continue to skip the remainder of current iteration
// Break will exit the loop

// Example: skip iteration where item is not a photo
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }
    print("Found picture: \(filename)")
}


// Example: exit loop immediately when condition is met
let number1 = 4
let number2 = 14
var multiples = [Int]()
for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}
print(multiples)


// Checkpoint 3 - FizzBuzz

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}

