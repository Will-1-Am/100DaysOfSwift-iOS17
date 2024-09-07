import Cocoa

//How to take action when a property changes
//Swift lets us create property observers which monitor a property's value whenever it changes
//Two forms exist - a didSet observer which runs after a property's value has changed\
// - and a willSet observer which runs when a property's value is about to change

// A struct without property observers looks like this:
struct Game {
    var score = 0
}

var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

