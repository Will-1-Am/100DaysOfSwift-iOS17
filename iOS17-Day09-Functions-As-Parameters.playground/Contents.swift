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
