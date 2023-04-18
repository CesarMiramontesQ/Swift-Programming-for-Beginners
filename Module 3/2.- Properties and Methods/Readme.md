## Properties and Methods

In Swift, properties and methods are fundamental components of object-oriented programming. Properties are variables that belong to an object, and they represent the state of the object. Methods are functions that belong to an object, and they represent the behavior of the object.

### Properties

Properties are defined inside a class and represent the state of the object. They can be either variables or constants, depending on whether their value can be changed. Here is an example of a simple class with two properties:

```swift
class Person {
    var name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
```

In this example, we define a class called `Person` with two properties: `name` of type `String` and `age` of type `Int`. We use the `var` keyword to define `name` as a variable property, because its value can be changed, and the `let` keyword to define `age` as a constant property, because its value cannot be changed once it is set in the initializer method.

### Methods

Methods are defined inside a class and represent the behavior of the object. They can take parameters and return values, just like regular functions. Here is an example of a class with a simple method:

```swift
class Person {
    var name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHello() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}
```

In this example, we define a method called `sayHello` that prints a greeting message using the `name` and `age` properties of the `Person` object.

### Accessing Properties and Methods

To access the properties and methods of an object in Swift, use the dot notation. Here is an example of how to access the `name` and `age` properties of a `Person` object:

```swift
let person = Person(name: "John Doe", age: 30)
print(person.name) // Output: John Doe
print(person.age) // Output: 30
```

In this example, we create a `Person` object called `person` using the `init` method, passing in the values `"John Doe"` for the `name` parameter, and `30` for the `age` parameter. We then use the dot notation to access the `name` and `age` properties of the `person` object.

We can also call the `sayHello` method on the `person` object using the dot notation:

```swift
person.sayHello() // Output: Hello, my name is John Doe and I am 30 years old.
```

In summary, properties are variables that represent the state of an object, and methods are functions that represent the behavior of an object. To access properties and methods of an object, use the dot notation.



## Exercise: Rectangle Class

1. Define a `Rectangle` class with the following properties:
    - `width`: a `Double` that represents the width of the rectangle.
    - `height`: a `Double` that represents the height of the rectangle.
2. Define two methods for the `Rectangle` class:
    - `calculateArea() -> Double`: a method that calculates and returns the area of the rectangle.
    - `calculatePerimeter() -> Double`: a method that calculates and returns the perimeter of the rectangle.
3. Create an object of the `Rectangle` class with a width of `5.0` and a height of `10.0`, and test the `calculateArea` and `calculatePerimeter` methods by printing their return values to the console.

Hint: The area of a rectangle is calculated as `width * height`, and the perimeter is calculated as `2 * (width + height)`.

For example:

```swift
let rectangle = Rectangle(width: 5.0, height: 10.0)
print("Area: \(rectangle.calculateArea())") // Output: Area: 50.0
print("Perimeter: \(rectangle.calculatePerimeter())") // Output: Perimeter: 30.0
```
