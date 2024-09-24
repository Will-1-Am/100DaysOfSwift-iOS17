import Cocoa

/// How to handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
/// try? will not reveal the reason for the failure, a normal try would need to be used for that.
/// try? can be combined with nil-coalescing

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)

///Checkpoint 9
///- Write a function that accepts an optional array of integers, and returns one of those integers randomly;
/// - If the array is missing or empty, return a new random number in the range 1 through 100;
/// - Write your function in a single line of code;

func getRandElement(from array: [Int]?) -> Int {
    array?.randomElement() ?? Int.random(in: 1...100)
}

getRandElement(from: [1, 2, 3])
