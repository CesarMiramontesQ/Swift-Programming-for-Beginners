import Foundation

// 1. Define an enumeration called `AccountError` that conforms to the `Error` protocol. The enumeration should
// have two cases: `invalidUsername` and `invalidPassword`.
enum AccountError: Error {
    case invalidUsername
    case invalidPassword
}

// 2. Write a function called `login` that takes two parameters, `username` and `password`, both of type `String`,
// and returns a `String` if the login is successful, or throws an `AccountError` if the username or password is invalid.
func login(username: String, password: String) throws -> String {
    guard username.contains(where: { CharacterSet.letters.contains($0.unicodeScalars.first!) }) else {
        throw AccountError.invalidUsername
    }
    
    let containsUppercaseLetter = password.unicodeScalars.contains(where: { CharacterSet.uppercaseLetters.contains($0) })
    let containsLowercaseLetter = password.unicodeScalars.contains(where: { CharacterSet.lowercaseLetters.contains($0) })
    
    guard containsUppercaseLetter && containsLowercaseLetter else {
        throw AccountError.invalidPassword
    }
    
    return "Login successful"
}

// 3. Write a `do-catch` block that calls the `login` function with valid and invalid values for `username` and `password`,
// and prints a message indicating whether the login was successful or an error occurred.
do {
    let result1 = try login(username: "JohnDoe", password: "Password123")
    print(result1)
    
    let result2 = try login(username: "", password: "password")
    print(result2)
    
    let result3 = try login(username: "John123", password: "password")
    print(result3)
    
    let result4 = try login(username: "JohnDoe", password: "password")
    print(result4)
} catch AccountError.invalidUsername {
    print("Invalid username.")
} catch AccountError.invalidPassword {
    print("Invalid password.")
} catch {
    print("An unexpected error occurred: \(error).")
}
