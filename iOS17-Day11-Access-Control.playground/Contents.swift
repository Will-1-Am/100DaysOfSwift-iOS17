import Cocoa

//How to limit access to internal data using access control
struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int)  {
        funds += amount
    }
    /**
    The withdraw(amount:) -> Bool function updates the funds variable and returns a boolean.  After the instantiation below, the success constant is able to use the boolean in a conditional.
     */
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
// The ability to alter the value assigned to the funds variable of the struct instance is very dangerous in this case (for the bank...).

// To prevent this, limit access to certain properties from within the struct only.

// Access control markers
// private - Don't let anything outside the struct use this
// file private - Don't let anything outside the current file use this.
// public - Let anyone, anywhere use this.
// private(set) - Allow reading from anywhere but only allow writing from within this struct

struct Order {
    private var id: Int
    init(id: Int) {
        self.id = id
    }
}

let order = Order(id: 1)
