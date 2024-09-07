import Cocoa

//How to take action when a property changes
//Swift lets us create property observers which monitor a property's value whenever it changes
//Two forms exist - a didSet observer which runs after a property's value has changed\
// - and a willSet observer which runs when a property's value is about to change

// A struct without property observers looks like this:
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1
// There is a bug here because the score wasn't printed here.

// Property observers allow us to include this functionality in the struct
