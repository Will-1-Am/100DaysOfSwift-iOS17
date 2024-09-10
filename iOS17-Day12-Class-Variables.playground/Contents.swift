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


// Checkpoint 7
//Make a class hierarchy for animals
//Start with Animal. Add a legs property for the number of legs an animal has.
// Make Dog a subclass of Animal, giving it a speak() method that prints a dog barking string, but each subclass should print something different.

// Make Corgi and Poodle subclasses of Dog

// Make Cat an Animal subclass.  Add a speak() method, whith each subclass printing something different, and an isTame Boolean, set with an initializer.

// Make Persian and Lion as subclasses of Cat.


