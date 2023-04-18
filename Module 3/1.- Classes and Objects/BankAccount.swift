import Foundation

class BankAccount {
    var accountNumber: String
    var accountHolder: String
    var balance: Double
    
    init(accountNumber: String, accountHolder: String, balance: Double) {
        self.accountNumber = accountNumber
        self.accountHolder = accountHolder
        self.balance = balance
    }
    
    func deposit(amount: Double) {
        balance += amount
        print("Deposit successful. New balance: \(balance)")
    }
    
    func withdraw(amount: Double) {
        if balance >= amount {
            balance -= amount
            print("Withdrawal successful. New balance: \(balance)")
        } else {
            print("Insufficient funds.")
        }
    }
}

let account = BankAccount(accountNumber: "123456789", accountHolder: "John Doe", balance: 1000.00)

print("Initial balance: \(account.balance)")

account.deposit(amount: 500.00)
account.withdraw(amount: 2000.00)
account.withdraw(amount: 1000.00)

print("Final balance: \(account.balance)")
