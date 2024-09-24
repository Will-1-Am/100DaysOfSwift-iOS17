import Cocoa

/// How to handle multiple optionals using optional chaining
/// Optional chaining is a simplified syntax for reading optionals inside optionals
let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
let lengthOfLast = names.first?.appending(" a string")
print("Next in line: \(chosen)")
/// The assignment to chosen says, pick a randomElement, unwrap it and change it to uppercase. If it's nil assign "No one".

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

///The assignment to author says, if there is a book and it has an author and it has a first character then uppercase the string and assign it to author.



