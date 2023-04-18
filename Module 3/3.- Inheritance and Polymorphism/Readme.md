## Inheritance and Polymorphism

In Swift, inheritance is a mechanism that allows a class to inherit properties and methods from a parent class. The child class can then add its own properties and methods, or override the ones inherited from the parent class.

### Inheriting Properties and Methods

To create a child class that inherits from a parent class in Swift, use the colon `:` operator followed by the name of the parent class. Here is an example of a parent class with two properties and a method, and a child class that inherits from it:

```swift
class Vehicle {
    var numberOfWheels: Int
    var color: String
    
    init(numberOfWheels: Int, color: String) {
        self.numberOfWheels = numberOfWheels
        self.color = color
    }
    
    func start() {
        print("Starting the vehicle...")
    }
}

class Car: Vehicle {
    var numberOfDoors: Int
    
    init(numberOfWheels: Int, color: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(numberOfWheels: numberOfWheels, color: color)
    }
    
    func drive() {
        print("Driving the car...")
    }
}
```

In this example, we define a parent class called `Vehicle` with two properties, `numberOfWheels` and `color`, and a method called `start`. We then define a child class called `Car` that inherits from `Vehicle`, and adds its own property `numberOfDoors` and method `drive`. 

### Overriding Methods

In Swift, a child class can override a method inherited from its parent class by using the `override` keyword. Here is an example of a child class that overrides a method inherited from its parent class:

```swift
class Animal {
    func makeSound() {
        print("The animal makes a sound.")
    }
}

class Dog: Animal {
    override func makeSound() {
        print("The dog barks.")
    }
}
```

In this example, we define a parent class called `Animal` with a method called `makeSound`. We then define a child class called `Dog` that overrides the `makeSound` method to make a specific sound for a dog.

### Polymorphism

Polymorphism is a feature of inheritance that allows a child class to be used as an instance of its parent class. This means that a variable or parameter of the parent class type can hold an object of the child class type, and the methods and properties of the child class can be accessed through the variable or parameter.

Here is an example of using polymorphism in Swift:

```swift
let vehicle: Vehicle = Car(numberOfWheels: 4, color: "red", numberOfDoors: 2)
vehicle.start() // Output: Starting the vehicle...
```

In this example, we create a variable `vehicle` of type `Vehicle` that holds an object of the `Car` class. We can then call the `start` method on the `vehicle` variable, even though the actual type of the object is `Car`, because `Car` is a child class of `Vehicle`.

In summary, inheritance is a mechanism that allows a child class to inherit properties and methods from a parent class, and polymorphism is a feature of inheritance that allows a child class to be used as an instance of its parent class.



## Exercise: Shapes

1. Define a `Shape` class with the following properties and methods:
    - `numberOfSides`: an `Int` that represents the number of sides of the shape.
    - `calculateArea() -> Double`: a method that calculates and returns the area of the shape. This method should be overridden in child classes.
    - `calculatePerimeter() -> Double`: a method that calculates and returns the perimeter of the shape. This method should be overridden in child classes.
2. Define two child classes of `Shape` called `Rectangle` and `Triangle`. The `Rectangle` class should have properties for `width` and `height`, and the `Triangle` class should have properties for `base` and `height`.
3. Implement the `calculateArea` and `calculatePerimeter` methods in the `Rectangle` and `Triangle` classes.
4. Create an object of the `Rectangle` class with a `width` of `5.0` and a `height` of `10.0`, and an object of the `Triangle` class with a `base` of `6.0` and a `height` of `8.0`. Test the `calculateArea` and `calculatePerimeter` methods for both objects by printing their return values to the console.

Hint: The area of a rectangle is calculated as `width * height`, and the perimeter is calculated as `2 * (width + height)`. The area of a triangle is calculated as `base * height / 2`, and the perimeter is calculated as the sum of the lengths of its three sides.

For example:

```swift
let rectangle = Rectangle(width: 5.0, height: 10.0)
let triangle = Triangle(base: 6.0, height: 8.0)
print("Rectangle area: \(rectangle.calculateArea())") // Output: Rectangle area: 50.0
print("Rectangle perimeter: \(rectangle.calculatePerimeter())") // Output: Rectangle perimeter: 30.0
print("Triangle area: \(triangle.calculateArea())") // Output: Triangle area: 24.0
print("Triangle perimeter: \(triangle.calculatePerimeter())") // Output: Triangle perimeter: 20.0
```
