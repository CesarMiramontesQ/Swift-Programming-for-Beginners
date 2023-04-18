## Functions and Closures

In this section, we will dive deeper into the concept of functions in Swift. We will learn about different types of functions, including closures, and explore how to use them in practical applications.

### Functions

A function is a block of code that performs a specific task. Functions are used to encapsulate logic into reusable components, making your code more modular and easier to maintain. Functions can take parameters, which are inputs to the function, and return values, which are outputs from the function.

#### Defining Functions

In Swift, functions are defined using the `func` keyword, followed by the function name, a set of parentheses that may contain one or more parameters, and an optional return type. Here's an example of a simple function in Swift that takes no parameters and returns no value:

```swift
func sayHello() {
    print("Hello, world!")
}
```

#### Calling Functions

To call a function in Swift, you simply use the function name followed by a set of parentheses that may contain one or more arguments. Here's an example of calling the `sayHello` function from above:

```swift
sayHello() // Output: "Hello, world!"
```

#### Parameters and Return Values

Functions can also take one or more parameters, which are inputs to the function. In Swift, parameters can have default values, be variadic (meaning they can take multiple arguments), and even be passed by reference using the `inout` keyword. Here's an example of a function in Swift that takes two parameters and returns their sum:

```swift
func addNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}
```

The function above takes two parameters, `_ a: Int` and `_ b: Int`, and returns their sum as an `Int` value.

#### Variadic Parameters

Swift also supports variadic parameters, which allow you to pass any number of arguments to a function. Variadic parameters are denoted by an ellipsis (`...`) after the parameter type. Here's an example of a function that takes a variadic parameter and returns their sum:

```swift
func addNumbers(_ numbers: Int...) -> Int {
    return numbers.reduce(0, +)
}
```

The function above takes any number of `Int` arguments and returns their sum as an `Int` value.

### Closures

Closures are similar to functions, but they can be passed around as variables and used in more flexible ways. Closures are often used for event handling and to implement functional programming patterns. In Swift, closures are defined using a similar syntax to functions, but with curly braces instead of parentheses.

#### Defining Closures

Here's an example of a closure in Swift that takes two integers as parameters and returns their sum:

```swift
let addNumbers = { (a: Int, b: Int) -> Int in
    return a + b
}
```

#### Calling Closures

To call a closure in Swift, you use the closure variable name followed by a set of parentheses that may contain one or more arguments. Here's an example of calling the `addNumbers` closure from above:

```swift
let result = addNumbers(1, 2) // result = 3
```

#### Capturing Values

Closures can also capture values from their surrounding context. This means that they can access and modify variables that are defined outside of the closure. Here's an example of a closure that captures a value:

```swift
var counter = 0
let incrementCounter = {
    counter += 1
}
incrementCounter() // counter = 1
incrementCounter() // counter = 2
incrementCounter() // counter = 3
```



## Exercise: Functions and Closures

1. Define a function called `calculateAverage` that takes an array of integers as a parameter and returns the average of those numbers as a `Double`.
2. Define a closure called `sortAscending` that takes two integers as parameters and returns `true` if the first integer is less than the second integer, and `false` otherwise.
3. Define a closure called `sortDescending` that takes two integers as parameters and returns `true` if the first integer is greater than the second integer, and `false` otherwise.
4. Create an array of integers and use the `calculateAverage` function to calculate the average of the array.
5. Create a new array of integers and use the `sorted(by:)` method to sort the array in ascending order using the `sortAscending` closure.
6. Create another new array of integers and use the `sorted(by:)` method to sort the array in descending order using the `sortDescending` closure.

Hint: The `sorted(by:)` method takes a closure that defines the sorting criteria for the array. The closure should take two arguments of the same type as the array, and return a `Bool` value that indicates whether the first argument should be sorted before the second argument.

For example, to sort an array of integers in ascending order, you could use the following closure:

```swift
let sortAscending = { (a: Int, b: Int) -> Bool in
    return a < b
}
```
