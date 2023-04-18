import Foundation

// 1. Define a function called `calculateAverage` that takes an array of integers as a parameter
// and returns the average of those numbers as a `Double`.
func calculateAverage(_ numbers: [Int]) -> Double {
    let sum = numbers.reduce(0, +)
    return Double(sum) / Double(numbers.count)
}

// 2. Define a closure called `sortAscending` that takes two integers as parameters
// and returns `true` if the first integer is less than the second integer, and `false` otherwise.
let sortAscending = { (a: Int, b: Int) -> Bool in
    return a < b
}

// 3. Define a closure called `sortDescending` that takes two integers as parameters
// and returns `true` if the first integer is greater than the second integer, and `false` otherwise.
let sortDescending = { (a: Int, b: Int) -> Bool in
    return a > b
}

// 4. Create an array of integers and use the `calculateAverage` function to calculate the average of the array.
let numbers = [1, 2, 3, 4, 5]
let average = calculateAverage(numbers)
print("The average of the numbers is: \(average)")

// 5. Create a new array of integers and use the `sorted(by:)` method to sort the array in ascending order using the `sortAscending` closure.
let numbers2 = [5, 2, 7, 1, 9]
let sortedAscending = numbers2.sorted(by: sortAscending)
print("The array sorted in ascending order is: \(sortedAscending)")

// 6. Create another new array of integers and use the `sorted(by:)` method to sort the array in descending order using the `sortDescending` closure.
let numbers3 = [5, 2, 7, 1, 9]
let sortedDescending = numbers3.sorted(by: sortDescending)
print("The array sorted in descending order is: \(sortedDescending)")
