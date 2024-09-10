import Cocoa

// How to copy classes
// Copies of classes always point to the same data, because they are reference types.
class User {
    var username = "Anonymous"
    
//    If we really want to avoid the default behaviour the following method could be added. Sometimes this is called a deep copy.
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()
user2.username = "Taylor"
print(user1.username)
print(user2.username)
