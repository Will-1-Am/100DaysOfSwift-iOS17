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


//Swift employs a default with the Array.removeAll() function
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)  //keepingCapacity's default value is false
print(characters.count)

