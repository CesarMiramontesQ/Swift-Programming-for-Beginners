import Foundation

print("Enter the percentage score:")
if let input = readLine(),
   let percentage = Double(input) {
    
    var grade = ""

    if percentage >= 90 {
        grade = "A"
    } else if percentage >= 80 {
        grade = "B"
    } else if percentage >= 70 {
        grade = "C"
    } else if percentage >= 60 {
        grade = "D"
    } else {
        grade = "F"
    }

    print("Your grade is \(grade)")
} else {
    print("Error reading percentage score.")
}
