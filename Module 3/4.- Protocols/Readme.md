## Protocols

A protocol in Swift is a blueprint of methods, properties, and other requirements that a class, structure, or enumeration must adopt. A protocol defines a set of rules that the conforming type must follow, without specifying how those rules are implemented. 

To declare a protocol, use the `protocol` keyword followed by the protocol's name:

```swift
protocol MyProtocol {
    // Requirements go here
}
```

A class, structure, or enumeration can adopt a protocol by including the protocol's name in its definition and implementing all of its requirements:

```swift
class MyClass: MyProtocol {
    // Implement protocol requirements here
}
```

A type can conform to multiple protocols by listing them separated by commas:

```swift
class MyClass: Protocol1, Protocol2, Protocol3 {
    // Implement protocol requirements here
}
```

Protocols can also be used as types, which means that any instance of a class, structure, or enumeration that conforms to a protocol can be assigned to a variable or constant of that protocol's type:

```swift
let myInstance: MyProtocol = MyClass()
```

This allows for writing generic and reusable code, since the same protocol can be adopted by multiple types.

## Extensions

Extensions in Swift allow you to add functionality to an existing class, structure, or enumeration, without modifying its source code. This can be useful when you want to add functionality to a type that is provided by a third-party library, or when you want to organize your code into smaller, more modular pieces.

To declare an extension, use the `extension` keyword followed by the name of the type you want to extend:

```swift
extension MyType {
    // New methods and properties go here
}
```

The new methods and properties defined in an extension can be called and accessed just like the original methods and properties defined in the type's source code.

Extensions can also be used to implement protocol conformance for a type:

```swift
extension MyType: MyProtocol {
    // Implement protocol requirements here
}
```

This can be useful when you want to add protocol conformance to a type that you don't have control over, such as a third-party library.


## Exercise - Protocols

Create a protocol called `Animatable` that defines a `var` property `numberOfFrames` of type `Int`, and a method called `animate` that takes no parameters and returns nothing. 

Create two classes called `Image` and `Movie`, both of which conform to the `Animatable` protocol. The `Image` class should have an additional property called `imageName` of type `String`, and the `Movie` class should have additional properties called `movieName` of type `String` and `duration` of type `Double`. 

In the `animate` method for the `Image` class, print "Animating \(numberOfFrames) frames of image \(imageName)". In the `animate` method for the `Movie` class, print "Animating \(numberOfFrames) frames of movie \(movieName), which has a duration of \(duration) seconds."

Create an array called `animatables` that contains two `Image` objects and two `Movie` objects. Loop through the `animatables` array and call the `animate` method for each object. 

Note: You can use whatever values you'd like for the `numberOfFrames`, `imageName`, `movieName`, and `duration` properties.

Good luck!
