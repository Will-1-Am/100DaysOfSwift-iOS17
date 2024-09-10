import Cocoa

// How to create a deinitializer for a class
// - You don't use func with deinitializers;
// - Deinitializers can never take parameters or return data;
// - Deinitializers run when the last compy of a class instance is destroyed
// - Deinitializers are never called directly;
// - Struct don't have deinitializers.

class User {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead!")
    }
}
