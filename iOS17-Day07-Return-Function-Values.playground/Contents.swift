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
    first.sorted() == second.sorted()
}

compareStrings(first: "abc", second: "cab")

// The return keyword may be removed when there is only one line of code in a function that will return a value


func pythagoras(a: Double, b: Double) -> Double {
    sqrt(pow(a, 2) + pow(b, 2))
}

pythagorous(a: 3, b: 4)
