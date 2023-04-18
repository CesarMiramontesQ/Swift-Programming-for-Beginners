class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func calculateArea() -> Double {
        fatalError("Method not implemented")
    }
    
    func calculatePerimeter() -> Double {
        fatalError("Method not implemented")
    }
}

class Rectangle: Shape {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
        super.init(numberOfSides: 4)
    }
    
    override func calculateArea() -> Double {
        return width * height
    }
    
    override func calculatePerimeter() -> Double {
        return 2 * (width + height)
    }
}

class Triangle: Shape {
    var base: Double
    var height: Double
    
    init(base: Double, height: Double) {
        self.base = base
        self.height = height
        super.init(numberOfSides: 3)
    }
    
    override func calculateArea() -> Double {
        return base * height / 2
    }
    
    override func calculatePerimeter() -> Double {
        let hypotenuse = sqrt(pow(base / 2, 2) + pow(height, 2))
        return base + hypotenuse * 2
    }
}

let rectangle = Rectangle(width: 5.0, height: 10.0)
let triangle = Triangle(base: 6.0, height: 8.0)
print("Rectangle area: \(rectangle.calculateArea())") // Output: Rectangle area: 50.0
print("Rectangle perimeter: \(rectangle.calculatePerimeter())") // Output: Rectangle perimeter: 30.0
print("Triangle area: \(triangle.calculateArea())") // Output: Triangle area: 24.0
print("Triangle perimeter: \(triangle.calculatePerimeter())") // Output: Triangle perimeter: 20.0
