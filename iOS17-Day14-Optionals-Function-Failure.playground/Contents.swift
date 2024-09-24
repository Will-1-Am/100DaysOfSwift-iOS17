import Cocoa

/// How to handle function failure with optionals
enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}
/// try? will not reveal the reason for the failure, a normal try would need to be used for that.
/// try? can be combined with nil-coalescing
