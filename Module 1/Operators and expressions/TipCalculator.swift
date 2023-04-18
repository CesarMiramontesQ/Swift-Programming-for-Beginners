import Foundation

print("Enter the cost of the meal:")
if let input = readLine(),
   let cost = Double(input) {
    
    print("Enter the tax rate:")
    if let input = readLine(),
       let taxRate = Double(input) {
        
        print("Enter the tip rate:")
        if let input = readLine(),
           let tipRate = Double(input) {
            
            let taxAmount = cost * taxRate / 100
            let tipAmount = cost * tipRate / 100
            let totalCost = cost + taxAmount + tipAmount
            
            print("The total cost of the meal is $\(String(format: "%.2f", totalCost))")
        } else {
            print("Error reading tip rate.")
        }
    } else {
        print("Error reading tax rate.")
    }
} else {
    print("Error reading cost of the meal.")
}
