## Control flow and conditional statements

Control flow statements are used to control the flow of a program based on certain conditions. In Swift, there are several types of control flow statements, including conditional statements and loops.

### Conditional statements

Conditional statements are used to make decisions based on certain conditions. Swift provides several conditional statements, including:

#### If statement

The if statement is used to execute a block of code if a certain condition is true. Here's the basic syntax of an if statement:

```swift
if condition {
    // Code to execute if the condition is true
}
```

Here's an example of using an if statement in Swift:

```swift
let age = 25

if age >= 18 {
    print("You are an adult")
}
```

#### If-else statement

The if-else statement is used to execute one block of code if a certain condition is true, and another block of code if the condition is false. Here's the basic syntax of an if-else statement:

```swift
if condition {
    // Code to execute if the condition is true
} else {
    // Code to execute if the condition is false
}
```

Here's an example of using an if-else statement in Swift:

```swift
let age = 15

if age >= 18 {
    print("You are an adult")
} else {
    print("You are not an adult")
}
```

#### If-else-if statement

The if-else-if statement is used to execute different blocks of code based on multiple conditions. Here's the basic syntax of an if-else-if statement:

```swift
if condition1 {
    // Code to execute if condition1 is true
} else if condition2 {
    // Code to execute if condition2 is true
} else {
    // Code to execute if all conditions are false
}
```

Here's an example of using an if-else-if statement in Swift:

```swift
let grade = 85

if grade >= 90 {
    print("You got an A")
} else if grade >= 80 {
    print("You got a B")
} else if grade >= 70 {
    print("You got a C")
} else {
    print("You got a D or lower")
}
```

#### Switch statement

The switch statement is used to execute different blocks of code based on a certain value. Here's the basic syntax of a switch statement:

```swift
switch value {
case value1:
    // Code to execute if value == value1
case value2:
    // Code to execute if value == value2
default:
    // Code to execute if value is not equal to any of the cases
}
```

Here's an example of using a switch statement in Swift:

```swift
let dayOfWeek = "Monday"

switch dayOfWeek {
case "Monday":
    print("It's Monday!")
case "Tuesday":
    print("It's Tuesday!")
case "Wednesday":
    print("It's Wednesday!")
case "Thursday":
    print("It's Thursday!")
case "Friday":
    print("It's Friday!")
default:
    print("It's the weekend!")
}
```

### Boolean expressions

Boolean expressions are expressions that evaluate to a Boolean value (`true` or `false`). They are often used in conditional statements to make decisions based on certain conditions. Swift provides several operators that can be used to create Boolean expressions, including:

- Comparison operators: `==`, `!=`, `>`, `<`, `>=`, `<=`
- Logical operators: `&&` (logical AND), `||` (logical OR), `!` (logical NOT)

Here are some examples of using Boolean expressions in



### Exercise: Grade Calculator

Create a Swift program that calculates the grade for a student based on their percentage score. The program should prompt the user for the percentage score, then use conditional statements to determine the corresponding grade based on the following scale:

- A: 90-100%
- B: 80-89%
- C: 70-79%
- D: 60-69%
- F: 0-59%

Here's an example of how the program should work:

```
Enter the percentage score: 85
Your grade is B
```

To complete this exercise, you will need to use variables and constants to store the user's input and the calculated values, conditional statements to determine the corresponding grade based on the percentage score, and string interpolation to display the result.

Here's some starter code to help you get started:

```swift
print("Enter the percentage score:")
// Use the readLine() function to read the user's input
// Store the percentage score in a variable or constant
// Use conditional statements to determine the corresponding grade
// Display the grade using string interpolation
```

Good luck, and have fun!
