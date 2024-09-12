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
}
