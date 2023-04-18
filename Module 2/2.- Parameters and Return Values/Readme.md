## Parameters and Return Values

In this section, we will learn about parameters and return values in Swift functions. We will explore how to pass parameters to functions, how to return values from functions, and how to use default parameter values, variadic parameters, and `inout` parameters.

### Function Parameters

A parameter is a value that is passed into a function to be used within the function. In Swift, you can define one or more parameters in the function's parameter list. Here's an example of a function that takes two parameters:

```swift
func greet(name: String, message: String) {
    print("\(name), \(message)")
}
```

The function above takes two parameters, `name` and `message`, both of type `String`. To call this function, you would pass in two `String` values:

```swift
greet(name: "John", message: "how are you?")
```

This would output:

```
John, how are you?
```

### Function Return Values

A function can also return a value using the `return` keyword. Here's an example of a function that returns an `Int` value:

```swift
func addNumbers(a: Int, b: Int) -> Int {
    return a + b
}
```

The function above takes two parameters, `a` and `b`, both of type `Int`, and returns their sum as an `Int` value.

To call this function and retrieve the return value, you would do the following:

```swift
let result = addNumbers(a: 2, b: 3)
print(result)
```

This would output:

```
5
```

### Default Parameter Values

In Swift, you can also specify default parameter values for a function. This allows you to call the function without passing in a value for that parameter, and it will use the default value instead. Here's an example of a function that takes a default parameter value:

```swift
func greet(name: String, message: String = "hello") {
    print("\(name), \(message)")
}
```

The function above takes two parameters, `name` and `message`, with `message` having a default value of "hello". This means that if you call the function without passing in a value for `message`, it will use the default value:

```swift
greet(name: "John") // Output: John, hello
```

### Variadic Parameters

Swift also supports variadic parameters, which allow you to pass any number of values to a function. Variadic parameters are denoted by an ellipsis (`...`) after the parameter type. Here's an example of a function that takes a variadic parameter:

```swift
func sum(numbers: Int...) -> Int {
    var result = 0
    for number in numbers {
        result += number
    }
    return result
}
```

The function above takes a variadic parameter `numbers`, which is a list of `Int` values. The function then sums up all the values in the list and returns the total.

To call this function, you can pass in any number of `Int` values:

```swift
let total = sum(numbers: 1, 2, 3, 4)
print(total) // Output: 10
```

### Inout Parameters

In Swift, parameters are passed by value by default, which means that a copy of the parameter value is passed to the function. However, you can also pass parameters by reference using the `inout` keyword. This allows the function to modify the value of the parameter directly.

Here's an example of a function that takes an `inout` parameter:

```swift
func swapValues(a: inout Int,
```

## Exercise: Parameters and Return Values

1. Define a function called `calculateRectangleArea` that takes two parameters, `width` and `height`, both of type `Double`, and returns the area of a rectangle as a `Double`.
2. Define a function called `calculateCircleCircumference` that takes one parameter, `radius`, of type `Double`, and returns the circumference of a circle as a `Double`. Use the value of Pi (3.14159265) for the calculation.
3. Define a function called `calculateTriangleArea` that takes two parameters, `base` and `height`, both of type `Double`, and returns the area of a triangle as a `Double`.
4. Define a function called `greet` that takes two parameters, `name` and `age`, both of type `String`, and returns a greeting message as a `String`. The greeting message should be in the format "Hello, [name], you are [age] years old.".

Hint: To calculate the area of a rectangle, you can use the formula `area = width * height`. To calculate the circumference of a circle, you can use the formula `circumference = 2 * Pi * radius`. To calculate the area of a triangle, you can use the formula `area = 0.5 * base * height`.
