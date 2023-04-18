import Foundation

print("Enter the temperature:")
if let input = readLine(),
   let temperature = Double(input) {
    
    print("Is the temperature in Celsius or Fahrenheit? (C/F):")
    if let unit = readLine() {
        var convertedTemperature: Double
        
        if unit == "C" || unit == "c" {
            // Convert from Celsius to Fahrenheit
            convertedTemperature = temperature * 9 / 5 + 32
            print("\(temperature)°C is equal to \(convertedTemperature)°F")
        } else if unit == "F" || unit == "f" {
            // Convert from Fahrenheit to Celsius
            convertedTemperature = (temperature - 32) * 5 / 9
            print("\(temperature)°F is equal to \(convertedTemperature)°C")
        } else {
            print("Invalid unit of measurement.")
        }
    } else {
        print("Error reading unit of measurement.")
    }
} else {
    print("Error reading temperature.")
}

