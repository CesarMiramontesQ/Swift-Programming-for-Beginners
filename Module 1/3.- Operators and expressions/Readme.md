## Operators and expressions

Swift provides a rich set of operators that can be used to perform various operations on data. In this section, we will dive deeper into Swift's operators and expressions, and learn how to use them to create more complex operations.

### Arithmetic operators

Arithmetic operators are used to perform basic arithmetic operations on numerical data. Swift provides the following arithmetic operators:

- Addition: `+`
- Subtraction: `-`
- Multiplication: `*`
- Division: `/`
- Remainder: `%`

Here are some examples of using arithmetic operators in Swift:

```swift
let sum = 10 + 5 // Addition
let difference = 10 - 5 // Subtraction
let product = 10 * 5 // Multiplication
let quotient = 10 / 5 // Division
let remainder = 10 % 3 // Remainder
```

### Comparison operators

Comparison operators are used to compare two values and return a Boolean value (`true` or `false`). Swift provides the following comparison operators:

- Equal to: `==`
- Not equal to: `!=`
- Greater than: `>`
- Less than: `<`
- Greater than or equal to: `>=`
- Less than or equal to: `<=`

Here are some examples of using comparison operators in Swift:

```swift
let isGreaterThan = 10 > 5 // Greater than
let isLessThan = 10 < 5 // Less than
let isEqual = 10 == 5 // Equal to
let isNotEqual = 10 != 5 // Not equal to
```

### Assignment operators

Assignment operators are used to assign a value to a variable or constant. Swift provides several assignment operators, including:

- Simple assignment: `=`
- Addition assignment: `+=`
- Subtraction assignment: `-=` 
- Multiplication assignment: `*=`
- Division assignment: `/=`
- Remainder assignment: `%=`

Here are some examples of using assignment operators in Swift:

```swift
var score = 0 // Simple assignment
score += 10 // Addition assignment
score -= 5 // Subtraction assignment
score *= 2 // Multiplication assignment
score /= 3 // Division assignment
score %= 2 // Remainder assignment
```

### Logical operators

Logical operators are used to combine Boolean values and return a Boolean result. Swift provides the following logical operators:

- Logical NOT: `!`
- Logical AND: `&&`
- Logical OR: `||`

Here are some examples of using logical operators in Swift:

```swift
let isTrue = true && false // Logical AND
let isFalse = true || false // Logical OR
let isNot = !true // Logical NOT
```

### Expressions

Expressions are combinations of values, variables, operators, and function calls that evaluate to a single value. Swift provides a powerful and flexible expression system that allows you to create complex operations using a combination of operators and expressions. Here are some examples of using expressions in Swift:

```swift
let result = (10 + 5) * 2 // Evaluates to 30
let isInRange = (1...10).contains(5) // Evaluates to true
let message = "Hello, " + "World!" // Evaluates to "Hello, World!"
```

By mastering operators and expressions in Swift, you will be able to write more complex and powerful programs.




### Exercise: Tip Calculator

Create a Swift program that calculates the total cost of a meal, including tax and tip. The program should prompt the user for the cost of the meal, the tax rate, and the tip rate, then calculate and display the total cost of the meal.

Here's an example of how the program should work:

```
Enter the cost of the meal: 50
Enter the tax rate: 8
Enter the tip rate: 20
The total cost of the meal is $63.20
```

To complete this exercise, you will need to use variables and constants to store the user's input and the calculated values, arithmetic operators to perform the calculations, and expressions to combine the values and operators.

Here's some starter code to help you get started:

```swift
print("Enter the cost of the meal:")
// Use the readLine() function to read the user's input
// Store the cost of the meal, tax rate, and tip rate in variables or constants
// Use arithmetic operators to calculate the tax and tip amounts
// Use expressions to combine the values and operators
// Display the total cost of the meal using string interpolation
```

Good luck, and have fun!
