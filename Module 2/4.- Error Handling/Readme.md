## Error Handling

In Swift, error handling is used to handle unexpected errors that may occur during program execution. Error handling allows you to gracefully recover from errors and handle them in a structured and consistent way.

### Defining and Throwing Errors

To define an error in Swift, you can create an enumeration that conforms to the `Error` protocol. For example:

```swift
enum NetworkError: Error {
    case noInternetConnection
    case serverError(statusCode: Int)
}
```

In the code above, we define an enumeration called `NetworkError` that conforms to the `Error` protocol. We define two cases: `noInternetConnection`, which represents a situation where there is no internet connection, and `serverError`, which represents a situation where the server returns an error with a specific status code.

To throw an error in Swift, you can use the `throw` keyword followed by an instance of an error. For example:

```swift
func fetchDataFromServer() throws -> String {
    guard hasInternetConnection() else {
        throw NetworkError.noInternetConnection
    }
    
    let statusCode = getStatusCodeFromServer()
    
    guard statusCode == 200 else {
        throw NetworkError.serverError(statusCode: statusCode)
    }
    
    return "Data from server"
}
```

In the code above, we define a function called `fetchDataFromServer` that returns a string. The function checks if there is an internet connection and throws a `NetworkError.noInternetConnection` error if there is no connection. The function also checks the status code returned by the server and throws a `NetworkError.serverError` error if the status code is not 200.

### Handling Errors

To handle errors in Swift, you can use the `try`, `catch`, and `finally` keywords. The `try` keyword is used to call a function that can throw an error. The `catch` keyword is used to catch and handle errors that are thrown. The `finally` keyword is used to execute code that should always be executed, regardless of whether an error was thrown or not.

Here's an example:

```swift
do {
    let data = try fetchDataFromServer()
    print(data)
} catch NetworkError.noInternetConnection {
    print("There is no internet connection.")
} catch NetworkError.serverError(let statusCode) {
    print("There was a server error with status code \(statusCode).")
} catch {
    print("An unexpected error occurred: \(error).")
} finally {
    print("The fetch operation is complete.")
}
```

In the code above, we use the `try` keyword to call the `fetchDataFromServer` function, which may throw an error. We then use the `catch` keyword to catch and handle specific errors that may be thrown, and a generic `catch` block to handle any other errors. We also use the `finally` keyword to print a message indicating that the fetch operation is complete.

### Propagating Errors

In Swift, you can also propagate errors up the call stack by adding the `throws` keyword to a function declaration. This allows errors to be handled by the calling function, or propagated up further if necessary. For example:

```swift
func fetchData() throws -> String {
    let data = try fetchDataFromServer()
    return data
}
```

In the code above, we define a function called `fetchData` that calls the `fetchDataFromServer` function, which can throw an error. We add the `throws` keyword to the function declaration, indicating that the function can propagate errors up the call stack.




## Exercise: Error Handling

1. Define an enumeration called `AccountError` that conforms to the `Error` protocol. The enumeration should have two cases: `invalidUsername` and `invalidPassword`.
2. Write a function called `login` that takes two parameters, `username` and `password`, both of type `String`, and returns a `String` if the login is successful, or throws an `AccountError` if the username or password is invalid. For this exercise, you can assume that a valid username is any string that contains at least one letter, and a valid password is any string that contains at least one uppercase letter and one lowercase letter.
3. Write a `do-catch` block that calls the `login` function with valid and invalid values for `username` and `password`, and prints a message indicating whether the login was successful or an error occurred.

Hint: To check if a string contains a letter, you can use the `contains(where:)` method of the `Character` type. To check if a string contains an uppercase or lowercase letter, you can use the `contains(where:)` method of the `UnicodeScalar` type.

For example, to check if a string contains an uppercase letter, you can use the following code:

```swift
let password = "Password123"
let containsUppercaseLetter = password.unicodeScalars.contains(where: { CharacterSet.uppercaseLetters.contains($0) })
print(containsUppercaseLetter) // Output: true
```
