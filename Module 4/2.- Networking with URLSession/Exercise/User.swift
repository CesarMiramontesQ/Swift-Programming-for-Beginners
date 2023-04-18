// User.swift

struct User {
    let username: String
    let email: String
    let phone: String
    
    init(username: String, email: String, phone: String) {
        self.username = username
        self.email = email
        self.phone = phone
    }
    
    func formattedInfo() -> String {
        return "\(username) - \(phone)"
    }
}
