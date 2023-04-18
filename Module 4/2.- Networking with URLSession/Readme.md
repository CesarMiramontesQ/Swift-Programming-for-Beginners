## Networking with URLSession

### Introduction

The URLSession framework is a powerful tool for iOS and macOS developers to communicate with web services. It enables developers to make HTTP requests to remote servers, download data asynchronously, and handle errors and timeouts. The framework provides a set of classes and protocols that can be used to create custom network requests and handle responses. 

### URLSession Configuration

Before using URLSession, developers need to create a URLSession instance with a URLSessionConfiguration object. The URLSessionConfiguration object specifies the behavior of the session, including timeout intervals, caching policies, and HTTP header fields. The default configuration is usually sufficient for most applications, but it can be customized as needed.

```swift
let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)
```

### Creating URL Requests

To send a request to a web service, developers must first create a URLRequest object. The URLRequest object represents the HTTP request, and it can be customized with headers, parameters, and a request body. 

```swift
let url = URL(string: "https://api.example.com/data")
var request = URLRequest(url: url!)
request.httpMethod = "GET"
```

### URLSessionDataTask

Once the URLRequest object is created, developers can use the URLSessionDataTask class to send the request to the server and handle the response. The data task retrieves the data asynchronously, and it can be used to download images, JSON data, or other types of data from a remote server.

```swift
let task = session.dataTask(with: request) { (data, response, error) in
    // Handle the response here
}
task.resume()
```

### Handling Responses

The response from the server can be handled in the completion handler of the data task. The response includes an HTTP status code, a set of headers, and the body of the response. Developers can use this information to determine whether the request was successful and to parse the response data.

```swift
let task = session.dataTask(with: request) { (data, response, error) in
    if let error = error {
        // Handle the error here
        return
    }
    guard let data = data else {
        // Handle the case where no data was returned
        return
    }
    // Parse the response data here
}
task.resume()
```

### Handling Errors

Errors can occur when sending requests over the network, such as when the server is not reachable, the connection times out, or the data is corrupted. URLSession provides a way to handle these errors gracefully, by returning an error object in the completion handler of the data task.

```swift
let task = session.dataTask(with: request) { (data, response, error) in
    if let error = error {
        // Handle the error here
        return
    }
    // Handle the successful response here
}
task.resume()
```

### Conclusion

Overall, URLSession is a powerful tool for iOS and macOS developers to interact with web services. By mastering the URLSession framework, developers can create powerful network requests, handle responses and errors, and download data asynchronously.



### Exercise

In this exercise, you will use URLSession to retrieve JSON data from a web service and parse it into a Swift object. 

1. Create a new project in Xcode and add a new Swift file. 
2. Define a struct called `User` that has properties for a username, email, and phone number. 
3. In the `viewDidLoad()` method of a view controller, use URLSession to retrieve the JSON data from the following URL: `https://jsonplaceholder.typicode.com/users`
4. Parse the JSON data into an array of `User` objects.
5. Display the array of `User` objects in a table view.

Hint: Use the `JSONSerialization` class to parse the JSON data into an array of dictionaries. Loop through the array of dictionaries, create a new `User` object for each dictionary, and add it to an array. Finally, reload the table view data to display the array of `User` objects.

### Bonus Exercise

Extend the `User` struct to include a method that returns a formatted string containing the user's name and phone number, separated by a hyphen. Use this method to display the user information in the table view cell.
