import UIKit

//@MainActor
//class ApiClient: @unchecked Sendable {

// Main module
extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}


extension ApiClient {
    func loadFeed   (completion: ([FeedItem]) -> Void) {}
} 

// API Module
class ApiClient  {
    nonisolated(unsafe) static let shared = ApiClient()
 
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

class MockApiClient: ApiClient {}
 
/// Login module
struct LoggedInUser {}

class LoginViewController: UIViewController {
    var login: (((LoggedInUser) -> Void) -> Void)?
    
    func didTapLoginButton() {
        login? { user in
            // show the feed screen
        }
    }
 }

// Feed Module
struct FeedItem {}


class FeedViewController: UIViewController {
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadFeed? { loadedItems in
            // update UI
        }
    }
}
