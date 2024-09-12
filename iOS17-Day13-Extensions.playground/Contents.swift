import Cocoa

///How to create and use extensions
/// Extensions allow use to add functionality to any type.

var quote = "       The truth is rarely pure and never simple    "

/// To remove the white space before the capital 'T' and after the final 'e', we can write the following:

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

/// These methods come from the Foundation api, but they are a bit wordy.  We could write the following to simplify the call.

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() {  /// mutating is required here because it applies the result to self (the current string instance)
        self = self.trimmed()
    }
    
    /// Properties added via extensions must be computed properties as they do not take up any storage
    /// This computed property creates an array of strings where each element is appended when a newline character is detected.
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

let trimmed2 = quote.trimmed()

/// A global function could have been defined instead of creating the extension, but there are several advantages of using this technique:
/// 1. Code completion;
/// 2. Code organization;
/// 3. Internal access;

quote.trim()


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)  // 4


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)

/// The memberwise initializer will not be available if we write  a custom one for some custom logic
