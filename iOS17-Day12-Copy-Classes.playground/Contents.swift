import Cocoa

// How to copy classes
// Copies of classes always point to the same data, because they are reference types.
class User {
    var username = "Anonymous"
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"
print(user1.username)
print(user2.username)
