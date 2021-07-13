
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginButton() {
    }
    
    @IBAction func userLoginHelpButton() {
    }
    
    @IBAction func userPasswordHelpButton() {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userLoginTF.text
    }
    
    
}

