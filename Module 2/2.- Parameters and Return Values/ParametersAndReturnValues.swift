import Foundation

// 1. Define a function called `calculateRectangleArea` that takes two parameters, `width` and `height`,
// both of type `Double`, and returns the area of a rectangle as a `Double`.
func calculateRectangleArea(width: Double, height: Double) -> Double {
    return width * height
}

// 2. Define a function called `calculateCircleCircumference` that takes one parameter, `radius`, of type `Double`,
// and returns the circumference of a circle as a `Double`. Use the value of Pi (3.14159265) for the calculation.
func calculateCircleCircumference(radius: Double) -> Double {
    return 2 * Double.pi * radius
}

// 3. Define a function called `calculateTriangleArea` that takes two parameters, `base` and `height`,
// both of type `Double`, and returns the area of a triangle as a `Double`.
func calculateTriangleArea(base: Double, height: Double) -> Double {
    return 0.5 * base * height
}

// 4. Define a function called `greet` that takes two parameters, `name` and `age`, both of type `String`,
// and returns a greeting message as a `String`. The greeting message should be in the format
// "Hello, [name], you are [age] years old.".
func greet(name: String, age: String) -> String {
    return "Hello, \(name), you are \(age) years old."
}

// Test the functions
let rectangleArea = calculateRectangleArea(width: 5.0, height: 10.0)
print("The area of the rectangle is: \(rectangleArea)")

let circleCircumference = calculateCircleCircumference(radius: 2.0)
print("The circumference of the circle is: \(circleCircumference)")

let triangleArea = calculateTriangleArea(base: 3.0, height: 4.0)
print("The area of the triangle is: \(triangleArea)")

let greetingMessage = greet(name: "John", age: "30")
print(greetingMessage)
