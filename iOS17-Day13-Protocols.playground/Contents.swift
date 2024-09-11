import Cocoa

//How to create and use protocols
//Protocols are a bit like contracts for our code

func commute(distance: Int, using vehicle: Whatever) ->  {
    // lots of code here
}

protocol Vehicle {
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

