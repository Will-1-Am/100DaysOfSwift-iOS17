import Cocoa

///How to create and use protocols
///Protocols are a bit like contracts for our code.  They let us define what kind of functionality we expect our types to support and Swift will ensure those types add the required functionality.
///
///Let's say we are trying to simulate a user commuting between their home and their office.  We might right a Car struct and then some code like this.  They might commute by some other type of vehicle (hence Whatever for the vehicle type below, but it really doesn't matter as long as the type defined meets the requirements defined by the protocol.

func commute(distance: Int, using vehicle: Whatever) ->  {
    // lots of code here
}


/// Protocols allow us to define a series of properties and methods to use like this:
protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

