import Cocoa

//How to create you own structs
//Create custom datatypes with their own variables & functions

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year) by \(artist)")
    }
}


let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)


print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()
