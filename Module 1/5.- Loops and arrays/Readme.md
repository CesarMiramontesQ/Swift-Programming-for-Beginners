## Loops and arrays

Loops are used to repeat a block of code multiple times, while arrays are used to store collections of data.

### Loops

Swift provides several loop structures, including:

#### For-in loop

The for-in loop is used to iterate over a collection of data, such as an array or a range of numbers. Here's the basic syntax of a for-in loop:

```swift
for item in collection {
    // Code to execute for each item in the collection
}
```

Here's an example of using a for-in loop in Swift to print the elements of an array:

```swift
let numbers = [1, 2, 3, 4, 5]

for number in numbers {
    print(number)
}
```

#### While loop

The while loop is used to repeat a block of code while a certain condition is true. Here's the basic syntax of a while loop:

```swift
while condition {
    // Code to execute while the condition is true
}
```

Here's an example of using a while loop in Swift to print the numbers from 1 to 5:

```swift
var i = 1

while i <= 5 {
    print(i)
    i += 1
}
```

#### Repeat-while loop

The repeat-while loop is similar to the while loop, but it always executes the code at least once, even if the condition is false. Here's the basic syntax of a repeat-while loop:

```swift
repeat {
    // Code to execute at least once
} while condition
```

Here's an example of using a repeat-while loop in Swift to print the numbers from 1 to 5:

```swift
var i = 1

repeat {
    print(i)
    i += 1
} while i <= 5
```

### Arrays

An array is a collection of data that can hold multiple values of the same type. Here's how you can declare an array in Swift:

```swift
let array = [value1, value2, value3, ...]
```

Here's an example of declaring an array of integers in Swift:

```swift
let numbers = [1, 2, 3, 4, 5]
```

You can access the elements of an array using their index, which starts at 0. Here's how you can access the first element of an array in Swift:

```swift
let firstNumber = numbers[0]
```

You can also modify the elements of an array using their index. Here's how you can change the value of the first element of an array in Swift:

```swift
numbers[0] = 10
```

Finally, you can iterate over the elements of an array using a for-in loop. Here's how you can print the elements of an array using a for-in loop in Swift:

```swift
for number in numbers {
    print(number)
}
```

### Conclusion

Loops and arrays are important concepts in programming, and they are used in a wide variety of applications. By understanding how to use loops to iterate over collections of data and how to declare and manipulate arrays, you can become a more effective and efficient programmer.




### Exercise: Sum of Even Numbers

Create a Swift program that calculates the sum of all even numbers in an array of integers. The program should prompt the user for the size of the array and the values of the array, then use a loop to iterate over the elements of the array and add up the even numbers.

Here's an example of how the program should work:

```
Enter the size of the array: 6
Enter the values of the array: 1 2 3 4 5 6
The sum of even numbers is 12
```

To complete this exercise, you will need to use variables and constants to store the user's input and the calculated values, a loop to iterate over the elements of the array, and conditional statements to check whether each element is even.

Here's some starter code to help you get started:

```swift
print("Enter the size of the array:")
// Use the readLine() function to read the user's input
// Store the size of the array in a variable or constant
// Create an empty array of integers
// Use a loop to prompt the user for the values of the array
// Store the values in the array
// Use a loop to iterate over the elements of the array
// Use conditional statements to check whether each element is even
// If the element is even, add it to a variable that stores the sum of even numbers
// Display the sum of even numbers using string interpolation
```

Good luck, and have fun!
