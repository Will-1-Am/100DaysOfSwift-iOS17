import Cocoa

/// How to use opaque return types
/// Opaque return types help us reduce complexity in our code.

func getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func getRandomBool() -> Bool {
    Bool.random()
}

/// Both Int & Bool conform to the Equatable protocol which allows us to use '==' to compare values of the same type.
print(getRandomNumber() == getRandomNumber())

