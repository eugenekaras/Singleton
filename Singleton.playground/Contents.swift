import UIKit

//@MainActor
//class ApiClient: @unchecked Sendable {

// API Module
class ApiClient  {
    nonisolated(unsafe) static let shared = ApiClient()
 
    func execute(_ : URLRequest, completion: (Data) -> Void) {}
}

class MockApiClient: ApiClient {}
 
/// Login module
struct LoggedInUser {}

extension ApiClient {
    func login(completion: (LoggedInUser) -> Void) {}
}

class LoginViewController: UIViewController {
    var api = ApiClient.shared
    
    func didTapLoginButton() {
        api.login { user in
            // show the feed screen
        }
    }
 }

// Feed Module
struct FeedItem {}

extension ApiClient {
    func loadFeed   (completion: ([FeedItem]) -> Void) {}
}

class FeedViewController: UIViewController {
    var api = ApiClient.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.loadFeed { loadedItems in
            // update UI
        }
    }
}
