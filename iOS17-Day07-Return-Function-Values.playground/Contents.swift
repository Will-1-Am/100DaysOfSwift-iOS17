import Cocoa

//How to return values from functions
let root = sqrt(169)
print(root)


func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// Do two strings contain the same letters, regardless of their order?
// This function should:
// - Accept two string parameters
// - Return true if their letters are the same

func compareStrings(first: String, second: String) -> Bool {
    if first.sorted() == second.sorted() {
        return true
    }
    return false
}

compareStrings(first: "abc", second: "cabd")
