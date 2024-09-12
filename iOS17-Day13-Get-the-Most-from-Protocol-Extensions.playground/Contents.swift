import Cocoa

/// How to get the most from protocol extensions
extension Numeric {
    func squared() -> Self {
        self * self
    }
}

let wholeNumber = 5
print(wholeNumber.squared())
/// If we want the same functionality on Double we can extend the protocol that Int & Double conform to.  Numeric is such a protocol.
/// However, this causes a problem since a Double squared cannot be an Int & vice versa.
/// The Self keyword can help us here as the return type since it refers to the conforming type that we call this thing on.
/// If we call this on an Int, it will return an Int and likewise for a Double.

struct User: Equatable {
    let name: String
}

let user1 = User(name: "Link")
let user2 = User(name: "Zelda")
print(user1 == user2)
print(user1 != user2)
