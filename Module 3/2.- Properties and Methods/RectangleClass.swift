import Foundation

class Rectangle {
    var width: Double
    var height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func calculateArea() -> Double {
        return width * height
    }
    
    func calculatePerimeter() -> Double {
        return 2 * (width + height)
    }
}

let rectangle = Rectangle(width: 5.0, height: 10.0)
print("Area: \(rectangle.calculateArea())")
print("Perimeter: \(rectangle.calculatePerimeter())")
