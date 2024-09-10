import Cocoa

//How to create your own classes
// Classes are another way that types can be created.  They differ from structs in five key ways, but they also have similarities with structs:
// - You get to create and name them;
// - Add properties, methods, property observers, and access control;
// - Create custom initializers to configure new instances.
// Classes differ from structs as follows:
// - You can make one class build upon functionality in another class;
// - Swift won't generate a memberwise initializer for classes;
// - If you copy an instance of a class, both copies share the same data;
// - We can addd a deinitializer to run when the final copy is destroyed;
// - Constant class instances can have their variable properties changed;

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10
