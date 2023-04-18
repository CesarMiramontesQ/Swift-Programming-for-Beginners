## Module 2: Functions and Optionals

In this module, students will learn how to define and use functions in Swift, which are reusable blocks of code that perform a specific task. They will also learn about closures, which are similar to functions but can be passed around as variables. Additionally, students will learn how to use optionals in Swift to handle situations where a value may or may not be present, and how to use error handling to gracefully handle unexpected errors.


## Functions and Closures

Functions are a fundamental concept in programming, and they are used to encapsulate a block of code that performs a specific task. In Swift, functions can take parameters, return values, and even be nested inside other functions.

#### Defining Functions

Here's the basic syntax for defining a function in Swift:

```swift
func functionName(parameter1: Type, parameter2: Type, ...) -> ReturnType {
    // Code to execute when the function is called
    return returnValue
}
```

Here's an example of a function in Swift that takes two integers as parameters and returns their sum:

```swift
func addNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}
```

#### Closures

Closures are similar to functions, but they can be passed around as variables and used in more flexible ways. In Swift, closures are defined using a similar syntax to functions, but with curly braces instead of parentheses.

Here's an example of a closure in Swift that takes two integers as parameters and returns their sum:

```swift
let addNumbers = { (a: Int, b: Int) -> Int in
    return a + b
}
```



## Parameters and Return Values

In this section, students will learn how to pass parameters to functions, and how to return values from functions. They will also learn about default parameter values, variadic parameters, and inout parameters.

#### Parameters

Parameters are used to pass data to functions. In Swift, parameters can have default values, be variadic (meaning they can take multiple arguments), and even be passed by reference using the `inout` keyword.

Here's an example of a function in Swift that takes two integers as parameters and returns their sum:

```swift
func addNumbers(_ a: Int, _ b: Int) -> Int {
    return a + b
}
```

#### Return Values

Functions can also return values, which are used to pass data back to the calling code. In Swift, functions can return any type, including other functions or closures.

Here's an example of a function in Swift that returns a closure:

```swift
func getAddFunction() -> ((Int, Int) -> Int) {
    return { (a: Int, b: Int) -> Int in
        return a + b
    }
}
```



## Optionals and Unwrapping

In this section, students will learn about optionals in Swift, which are used to handle situations where a value may or may not be present. They will also learn how to unwrap optionals to access their underlying values, and how to use optional chaining to safely access nested optionals.

#### Optionals

In Swift, an optional is a type that can have a value or be nil. This is useful for handling situations where a value may or may not be present, such as when parsing data from an external source.

Here's an example of an optional in Swift:

```swift
let optionalValue: Int? = 5
```

#### Unwrapping Optionals

To access the underlying value of an optional, it must be unwrapped. In Swift, this is typically done using optional binding, which



## Error Handling

In this section, students will learn about error handling in Swift, which is used to gracefully handle unexpected errors that may occur during program execution. They will learn how to define and throw errors using the `throws` keyword, and how to handle errors using `try`, `catch`, and `finally` blocks.

#### Throwing Errors

In Swift, errors are represented using the `Error` protocol, which defines the basic structure of an error. To define a custom error, you can create a new type that conforms to the `Error` protocol.

Here's an example of defining a custom error in Swift:

```swift
enum NetworkError: Error {
    case badRequest
    case unauthorized
    case notFound
    case serverError
}
```

To throw an error in Swift, you can use the `throw` keyword followed by the error you want to throw. Here's an example of throwing an error in Swift:

```swift
func fetchData(url: URL) throws -> Data {
    let session = URLSession.shared
    let request = URLRequest(url: url)
    var data: Data?
    var error: Error?
    let semaphore = DispatchSemaphore(value: 0)
    let task = session.dataTask(with: request) { (responseData, _, responseError) in
        data = responseData
        error = responseError
        semaphore.signal()
    }
    task.resume()
    semaphore.wait()
    if let error = error {
        throw error
    } else if let data = data {
        return data
    } else {
        throw NetworkError.serverError
    }
}
```

#### Handling Errors

To handle errors in Swift, you can use a `do`-`catch` block. The `do` block contains the code that may throw an error, and the `catch` block contains the code to handle the error if it occurs.

Here's an example of handling an error in Swift:

```swift
let url = URL(string: "https://example.com/data")!
do {
    let data = try fetchData(url: url)
    print(String(data: data, encoding: .utf8)!)
} catch NetworkError.badRequest {
    print("Bad request")
} catch NetworkError.unauthorized {
    print("Unauthorized")
} catch NetworkError.notFound {
    print("Not found")
} catch NetworkError.serverError {
    print("Server error")
} catch {
    print("An error occurred: \(error)")
}
```

In addition to `do`-`catch` blocks, Swift also supports a `finally` block, which is executed regardless of whether an error is thrown or not. This can be useful for performing cleanup tasks, such as closing files or releasing resources.

Here's an example of using a `finally` block in Swift:

```swift
let file = try File(path: "data.txt")
do {
    let data = try file.readData()
    print(String(data: data, encoding: .utf8)!)
} catch {
    print("An error occurred: \(error)")
} finally {
    file.close()
}
```

### Conclusion

Functions and optionals are fundamental concepts in Swift, and they are used extensively in Swift programming. By understanding how to define and use functions, how to work with optionals, and how to handle errors in Swift, you can become a more effective and efficient Swift programmer.
