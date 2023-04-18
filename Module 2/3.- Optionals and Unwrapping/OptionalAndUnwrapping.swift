import Foundation

// 1. Declare a variable called `optionalString` of type `String?` and assign it a value of `nil`.
var optionalString: String? = nil

// 2. Declare a variable called `favoriteColor` of type `String?` and assign it a value of your favorite color.
var favoriteColor: String? = "blue"

// 3. Use optional binding to check if `favoriteColor` contains a value, and if it does, print a message
// that says "Your favorite color is [color].", where `[color]` is the value of `favoriteColor`.
// If it does not contain a value, print a message that says "You have not specified a favorite color."
if let color = favoriteColor {
    print("Your favorite color is \(color).")
} else {
    print("You have not specified a favorite color.")
}

// 4. Declare a function called `divide` that takes two parameters, `a` and `b`, both of type `Double?`,
// and returns a `Double?`. The function should perform the division `a / b` only if both `a` and `b` are not `nil`,
// and return the result as an optional. If either `a` or `b` is `nil`, the function should return `nil`.
func divide(a: Double?, b: Double?) -> Double? {
    guard let x = a, let y = b, y != 0 else {
        return nil
    }
    
    return x / y
}

// Test the functions
let result1 = divide(a: 10, b: 2)
print("The result of the division is: \(result1 ?? 0)")

let result2 = divide(a: 10, b: nil)
print("The result of the division is: \(result2 ?? 0)")

let result3 = divide(a: nil, b: 5)
print("The result of the division is: \(result3 ?? 0)")
