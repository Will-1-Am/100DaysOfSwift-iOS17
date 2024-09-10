import Cocoa

// How to work with variables inside classes

class User {
    var name = "Paul"
}

var user = User()
user.name = "Taylor"
print(user.name)
user.name = "Frank"
print(user.name)
