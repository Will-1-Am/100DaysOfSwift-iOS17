import Cocoa

//How to provide default values for parameters
//Assign a value to a parameter when it is declared.
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)

printTimesTables(for: 5, end: 15)


