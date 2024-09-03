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


//The following are all different functions differentiated by their parameter names
func hireEmployee(name: String){}
func hireEmployee(title: String){}
func hireEmployee(location: String){}

// The hasPrefix function can be called without a parameter name
// because the external name is an underscore.  This enables the
// call to read better.
let lyric = "I see a red door and I want it painted black."
print(lyric.hasPrefix("I see"))


// This function has an external parameter
func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string: string)
