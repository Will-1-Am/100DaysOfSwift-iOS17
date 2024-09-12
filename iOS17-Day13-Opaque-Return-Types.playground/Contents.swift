import Cocoa

/// How to use opaque return types
/// Opaque return types help us reduce complexity in our code.

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

/// Both Int & Bool conform to the Equatable protocol which allows us to use '==' to compare values of the same type.
print(getRandomNumber() == getRandomNumber())

/// Since Int & Bool conform to Equatable, we should be able to substitute Equatable for their respective return types in the function definitions above.  But if the subsitution is made Swift will not permit it, while it is ok generally to use protocols for return types.  Understanding the reason behind this exception is key to understanding opaque return types.
/// If we try to compare '5' to 'true' for instance, this is clearly nonsense which is the reason why Swift doesn't allow Equatible as a return type.  In order for us to use Equatable as a return type it must be preceded with the some keyword

let num = getRandomNumber()

/// Swift always understands what the underlying type is allowing us to sort of 'hide' this information in our code through the use of protocols.  The 'some' keyword allows us to be less specific when declaring the return type.

/// SwiftUI uses the View protocol extensively for buttons, tabbar, navbar, etc.  Using this protocol allows Swift to decide what to return.

protocol View { }
