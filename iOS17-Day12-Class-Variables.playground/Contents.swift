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

class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Cat: Animal {
    var isTame: Bool
    func speak() {
        print("meow")
    }
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("meeeeooooowww")
    }
}

class Lion: Cat {
    override func speak() {
        print("roooarrrr")
    }
}

class Dog: Animal {
    func speak() {
        print("Woof")
    }
}

class Corgi: Dog {
    override func speak() {
        print("rrrruff")
    }
}

class Poodle: Dog {
    override func speak() {
        print("yap yap")
    }
}


let poodle = Poodle(legs: 4)
poodle.speak()

let corgi = Corgi(legs: 4)
corgi.speak()

let persion = Persian(legs: 4, isTame: true)
persion.speak()

let lion = Lion(legs: 4, isTame: false)
