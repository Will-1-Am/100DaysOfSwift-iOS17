import Cocoa

/// How to create and use protocol extensions
/// Protocol extensions extend functionality of protocols meaning that any types conforming to the protocol will automatically get the extended functionality.
extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isEmpty == false {
    print("Guest count: \(guests.count)")
}

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}
