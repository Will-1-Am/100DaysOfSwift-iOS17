import Cocoa

//How to customize parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    
    var rolls = [Int]()
    
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)
