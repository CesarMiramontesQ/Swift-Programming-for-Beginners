## Classes and Objects

In Swift, a class is a fundamental building block of object-oriented programming. A class is a blueprint or template that defines a set of properties and methods that describe the behavior of objects created from the class. Objects are instances of a class, and they contain values for the properties defined by the class.

### Declaring a Class

To declare a class in Swift, use the `class` keyword followed by the name of the class, and then define the properties and methods of the class inside curly braces. Here is an example of a simple class declaration:

```swift
class Person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}
```

In this example, we define a class called `Person` with two properties: `name` of type `String` and `age` of type `Int`. We also define an initializer method `init` that takes two parameters, `name` and `age`, and assigns their values to the corresponding properties. Finally, we define a method `sayHello` that prints a greeting message using the `name` and `age` properties.

### Creating an Object

To create an object from a class in Swift, use the initializer method of the class. Here is an example of how to create an object from the `Person` class:

```swift
let person = Person(name: "John Doe", age: 30)
person.sayHello() // Output: Hello, my name is John Doe and I am 30 years old.
```

In this example, we create an object called `person` from the `Person` class using the `init` method, passing in the values `"John Doe"` for the `name` parameter, and `30` for the `age` parameter. We then call the `sayHello` method on the `person` object, which prints the greeting message using the values of the `name` and `age` properties of the `person` object.

### Accessing Properties and Methods

To access the properties and methods of an object in Swift, use the dot notation. Here is an example of how to access the `name` and `age` properties of the `person` object:

```swift
print(person.name) // Output: John Doe
print(person.age) // Output: 30
```

In this example, we use the dot notation to access the `name` and `age` properties of the `person` object. We can also call the `sayHello` method on the `person` object using the dot notation:

```swift
person.sayHello() // Output: Hello, my name is John Doe and I am 30 years old.
```

In summary, a class in Swift is a blueprint for creating objects that define properties and methods. Objects are instances of a class that contain values for the properties defined by the class. To access the properties and methods of an object, use the dot notation.



## Exercise: Bank Account Class

1. Define a `BankAccount` class with the following properties:
    - `accountNumber`: a `String` that represents the account number.
    - `accountHolder`: a `String` that represents the name of the account holder.
    - `balance`: a `Double` that represents the balance of the account.
2. Define a constructor method that takes parameters for `accountNumber`, `accountHolder`, and `balance`, and sets the corresponding properties.
3. Define two methods for the `BankAccount` class:
    - `deposit(amount: Double)`: a method that adds the specified amount to the account balance.
    - `withdraw(amount: Double)`: a method that subtracts the specified amount from the account balance, but only if the account has sufficient funds. If the account does not have sufficient funds, the method should print an error message and not perform the withdrawal.
4. Create an object of the `BankAccount` class, and test the `deposit` and `withdraw` methods by depositing and withdrawing various amounts from the account.

Hint: To print a message to the console, use the `print` function. For example: `print("Hello, World!")`.

For example:

```swift
let account = BankAccount(accountNumber: "123456789", accountHolder: "John Doe", balance: 1000.00)
print("Initial balance: \(account.balance)") // Output: Initial balance: 1000.0

account.deposit(amount: 500.00)
print("New balance: \(account.balance)") // Output: New balance: 1500.0

account.withdraw(amount: 2000.00) // Output: Insufficient funds.
print("Final balance: \(account.balance)") // Output: Final balance: 1500.0

account.withdraw(amount: 1000.00)
print("Final balance: \(account.balance)") // Output: Final balance: 500.0
```
