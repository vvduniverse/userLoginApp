
import UIKit

class LoginViewController: UIViewController {

    private let userName = "Eugeniya"
    private let password = "swiftbook"
    
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func loginButton() {
        if userLoginTF.text == userName || userPasswordTF.text == password {
        performSegue(withIdentifier: "welcomeVCSegue", sender: nil)
        }
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

