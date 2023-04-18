## Parsing JSON Data

When retrieving data from a web service, the data is typically returned in a format called JSON (JavaScript Object Notation). JSON is a lightweight data interchange format that is easy for humans to read and write, and easy for machines to parse and generate. 

To use the data retrieved from a web service in a Swift application, the JSON data must be parsed and converted into a format that can be used by the application, such as objects or structs. This is known as "decoding" the JSON data.

Swift provides several ways to decode JSON data, including:

- `JSONSerialization`: This is a built-in class in Swift that can be used to parse JSON data into a dictionary or an array of dictionaries. However, this approach can be cumbersome and error-prone, especially for complex JSON structures.

- Codable: This is a Swift protocol that provides a convenient way to decode and encode JSON data into Swift objects or structs. To use Codable, the Swift objects or structs must conform to the protocol by defining their properties and their associated JSON keys. Codable can automatically map the JSON data to the properties of the Swift objects or structs.

Here's an example of how to decode JSON data using Codable:

```swift
struct Person: Codable {
    let firstName: String
    let lastName: String
    let age: Int
}

let jsonString = """
{
    "firstName": "John",
    "lastName": "Doe",
    "age": 30
}
"""

let jsonData = jsonString.data(using: .utf8)!
let decoder = JSONDecoder()

do {
    let person = try decoder.decode(Person.self, from: jsonData)
    print(person.firstName) // "John"
    print(person.lastName) // "Doe"
    print(person.age) // 30
} catch {
    print("Error decoding JSON: \(error.localizedDescription)")
}
```

In this example, we define a `Person` struct that conforms to the `Codable` protocol, with properties for the person's first name, last name, and age. We then create a JSON string that represents a `Person` object, and convert it to JSON data using the `data(using:)` method. We create a `JSONDecoder` instance, and use it to decode the JSON data into a `Person` object. We can then access the properties of the `Person` object using dot notation.

By using Codable to decode JSON data, we can avoid the complexity of manually parsing and mapping the data to our Swift objects or structs, making our code more concise and easier to maintain.



## Exercise:

Write a Swift program that retrieves JSON data from a web service, and decodes it into a Swift object using Codable.

1. Create a new Swift file, and define a struct that conforms to the Codable protocol. The struct should represent a type of object that can be represented by the JSON data.

2. Use URLSession to retrieve the JSON data from a web service. You can use the following URL to retrieve a sample JSON data:
```
https://jsonplaceholder.typicode.com/posts/1
```

3. Decode the JSON data using Codable, and create an instance of the Swift object defined in step 1.

4. Print out the properties of the Swift object to the console.

5. Handle any errors that may occur during the decoding process.

Example Solution:

```swift
import Foundation

struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

let urlString = "https://jsonplaceholder.typicode.com/posts/1"
let url = URL(string: urlString)!
let session = URLSession.shared

let task = session.dataTask(with: url) { (data, response, error) in
    guard let jsonData = data else {
        print("Error retrieving JSON data: \(error?.localizedDescription ?? "Unknown error")")
        return
    }
    
    let decoder = JSONDecoder()
    
    do {
        let post = try decoder.decode(Post.self, from: jsonData)
        print("Post title: \(post.title)")
        print("Post body: \(post.body)")
    } catch {
        print("Error decoding JSON: \(error.localizedDescription)")
    }
}

task.resume()
```

In this example solution, we define a `Post` struct that conforms to the Codable protocol, with properties for the post's user ID, ID, title, and body. We then create a `URL` object representing the web service endpoint, and use URLSession to retrieve the JSON data. We create a `JSONDecoder` instance, and use it to decode the JSON data into a `Post` object. We then print out the post's title and body to the console. Finally, we handle any errors that may occur during the decoding process.
