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
