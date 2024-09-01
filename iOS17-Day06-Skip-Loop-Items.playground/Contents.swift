import Cocoa

//How to skip loop items with break and continue
// Continue to skip the remainder of current iteration
// Break will exit the loop

// Example: skip iteration where item is not a photo
let filenames = ["me.jpg", "work.txt", "sophie.jpg"]

for filename in filenames {
    if !filename.hasSuffix(".jpg") {
        continue
    }
    print("Found picture: \(filename)")
}
