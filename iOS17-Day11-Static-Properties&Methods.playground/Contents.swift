import Cocoa

//Static properties and methods
struct School {
    static var studentCount = 0
    
    static func add(student: String) {
        print("\(student) joined the school.")
        studentCount += 1
    }
    
//    The static property and method belong to the School struct itself and not any particular instance of it.
}


School.add(student: "Taylor Swift")
print(School.studentCount)


// Self can be used to access static properties and methods within a struct - self with a lowercase 's' is different and refers to a value only.  Self with a capital 'S' refers to a type.
struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "http://www.hackingwithswift.com"
}

AppData.homeURL

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "Fred", password: "f1in5+one")
}

Employee.example.self
