// ViewController.swift

import UIKit

class ViewController: UIViewController {
    
    var users = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Error: \(error?.localizedDescription ?? "Unknown error")")
                return
            }
            
            do {
                let jsonArray = try JSONSerialization.jsonObject(with: data, options: []) as! [[String: Any]]
                for jsonDict in jsonArray {
                    let username = jsonDict["username"] as! String
                    let email = jsonDict["email"] as! String
                    let phone = jsonDict["phone"] as! String
                    let user = User(username: username, email: email, phone: phone)
                    self.users.append(user)
                }
                
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            } catch {
                print("Error parsing JSON: \(error.localizedDescription)")
            }
        }
        
        task.resume()
    }
    
    @IBOutlet weak var tableView: UITableView!
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath)
        let user = users[indexPath.row]
        cell.textLabel?.text = user.formattedInfo()
        return cell
    }
}
