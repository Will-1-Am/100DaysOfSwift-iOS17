import Cocoa

//How to accept functions as parameters

//Write a function that generates an array of integers by calling another function repeatedly

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

// Call makeArray with a closure for the function argument
let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

// The same functionality can be produced using a function instead of a closure
func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

//  A function may be defined to take as many functions as parameters as desired
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}


// Calling the above function takes the following syntax:
doImportantWork {
    print("This is the first work.")
} second: {
    print("This is the second work.")
} third: {
    print("This is the third work.")
}
