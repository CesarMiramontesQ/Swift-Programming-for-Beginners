import Foundation

print("Enter the size of the array:")
if let sizeInput = readLine(),
   let size = Int(sizeInput) {
    
    var numbers = [Int]()
    var sum = 0

    for i in 1...size {
        print("Enter the value of element \(i):")
        if let input = readLine(),
           let number = Int(input) {
            numbers.append(number)
        } else {
            print("Invalid input. Please enter an integer.")
            break
        }
    }

    for number in numbers {
        if number % 2 == 0 {
            sum += number
        }
    }

    print("The sum of even numbers is \(sum)")
} else {
    print("Invalid input. Please enter an integer.")
}
