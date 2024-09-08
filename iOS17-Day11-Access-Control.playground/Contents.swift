import Cocoa

//How to limit access to internal data using access control
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int)  {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}


//account.funds -= 1000
//print(account.funds)
// This allows a withdrawal of more than our available balance!!!

// To prevent this, limit access to certain properties from within the struct only.

// Access control markers
// private - Don't let anything outside the struct use this
// file private - Don't let anything outside the current file use this.
// public - Let anyone, anywhere use this.
// private(set) - Allow reading from anywhere but only allow writing from within this struct
