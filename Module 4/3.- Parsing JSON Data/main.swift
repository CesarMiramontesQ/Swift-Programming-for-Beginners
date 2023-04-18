import Foundation

// Define a struct that conforms to Codable
struct Post: Codable {
    let userId: Int
    let id: Int
    let title: String
    let body: String
}

// Define the URL for the JSON data
let urlString = "https://jsonplaceholder.typicode.com/posts/1"
guard let url = URL(string: urlString) else {
    fatalError("Invalid URL string: \(urlString)")
}

// Create a URLSession and data task to retrieve the JSON data
let session = URLSession.shared
let task = session.dataTask(with: url) { data, response, error in
    // Handle any errors
    if let error = error {
        print("Error retrieving JSON data: \(error)")
        return
    }
    
    // Ensure the HTTP response status code is successful
    guard let httpResponse = response as? HTTPURLResponse,
          (200...299).contains(httpResponse.statusCode) else {
        print("Invalid HTTP response")
        return
    }
    
    // Ensure there is data returned from the server
    guard let jsonData = data else {
        print("No data returned from server")
        return
    }
    
    do {
        // Decode the JSON data into a Post object using Codable
        let post = try JSONDecoder().decode(Post.self, from: jsonData)
        
        // Print out the post's properties
        print("Post ID: \(post.id)")
        print("User ID: \(post.userId)")
        print("Title: \(post.title)")
        print("Body: \(post.body)")
    } catch {
        print("Error decoding JSON data: \(error)")
    }
}

task.resume()
