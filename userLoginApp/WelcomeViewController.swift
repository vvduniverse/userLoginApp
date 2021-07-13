
import UIKit

class WelcomeViewController: UIViewController {

    var username: String?
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let username = self.username else { return }
        welcomeLabel.text = "Welcome, \(username)!"
    }
    
    @IBAction func logoutTapped() {
    }
    
}
