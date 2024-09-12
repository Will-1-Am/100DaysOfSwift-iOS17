import Cocoa

/// How to get the most from protocol extensions
extension Int {
    func squared() -> Int {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())
