import Cocoa

//How to return values from functions
let root = sqrt(169)
print(root)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)
