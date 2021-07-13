
import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let username = self.username else { return }
        welcomeLabel.text = "Welcome, \(username)!"
    }
    
    @IBAction func logoutTapped() {
    }
    
}
