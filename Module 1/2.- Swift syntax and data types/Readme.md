## Swift syntax and data types

Swift is a statically typed programming language, which means that every variable and constant must have a specific type. Here are the basic data types in Swift:

### Integers

Integers are whole numbers, either positive or negative. They are represented by the Int type in Swift, which can have different sizes depending on the platform. Here are some examples:

```swift
let myAge = 30 // A positive integer
let yourAge: Int = -25 // A negative integer
```

### Floating-point numbers

Floating-point numbers are numbers with a fractional component, such as 3.14 or -2.5. They are represented by the Double and Float types in Swift, which have different precisions. Here are some examples:

```swift
let pi = 3.14159 // A double-precision floating-point number
let e: Float = 2.71828 // A single-precision floating-point number
```

### Strings

Strings are sequences of characters, such as "Hello, World!" or "Swift is awesome!". They are represented by the String type in Swift, and can be created using string literals or by concatenating other strings. Here are some examples:

```swift
let message = "Hello, World!" // A string literal
let name = "John"
let greeting = "Hi, " + name // Concatenating strings
```

### Booleans

Booleans are logical values that can be either true or false. They are represented by the Bool type in Swift, and are often used in conditional statements and loops. Here are some examples:

```swift
let isRaining = true // A true boolean value
let isSunny: Bool = false // A false boolean value
```

### Variables and constants

Variables and constants are used to store values in Swift. Variables are declared using the `var` keyword, and their values can be changed throughout the program. Constants are declared using the `let` keyword, and their values cannot be changed once they are assigned. Here are some examples:

```swift
var score = 0 // A variable that can be changed
score = 10 // The value of the variable is updated

let maxScore = 100 // A constant that cannot be changed
// maxScore = 200 // This would cause a compile-time error
```

### Swift operators

Swift has many built-in operators that can be used to perform arithmetic, comparison, and logical operations on data. Here are some examples:

```swift
// Arithmetic operators
let sum = 10 + 5 // Addition
let difference = 10 - 5 // Subtraction
let product = 10 * 5 // Multiplication
let quotient = 10 / 5 // Division

// Comparison operators
let isGreater = 10 > 5 // Greater than
let isLess = 10 < 5 // Less than
let isEqual = 10 == 5 // Equal to
let isNotEqual = 10 != 5 // Not equal to

// Logical operators
let isTrue = true && false // Logical AND
let isFalse = true || false // Logical OR
let isNot = !true // Logical NOT
```

By mastering the basic syntax and data types in Swift, you will be well on your way to becoming a proficient Swift programmer.




### Exercise: Temperature Converter

Create a Swift program that converts temperatures between Celsius and Fahrenheit. The program should prompt the user for the temperature and the unit of measurement (Celsius or Fahrenheit), then convert the temperature to the other unit of measurement and display the result.

Here's an example of how the program should work:

```
Enter the temperature: 32
Is the temperature in Celsius or Fahrenheit? (C/F): F
32°F is equal to 0°C
```

To complete this exercise, you will need to use variables and constants to store the user's input and the converted temperature, conditional statements to determine the conversion formula, and arithmetic operators to perform the conversion.

Here's some starter code to help you get started:

```swift
print("Enter the temperature:")
// Use the readLine() function to read the user's input
// Store the temperature and unit of measurement in variables or constants
// Use conditional statements to determine the conversion formula
// Use arithmetic operators to perform the conversion
// Display the result using string interpolation
```

Good luck, and have fun!
