
import UIKit

class LoginViewController: UIViewController {

    private let userName = "Eugenia"
    private let password = "swiftbook"
    
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        userLoginTF.becomeFirstResponder()
//    }

    @IBAction func loginButton() {
        if userLoginTF.text == userName && userPasswordTF.text == password {
            performSegue(withIdentifier: "welcomeVCSegue", sender: nil)
        } else {
            showAlert(title: "Invalid ligin or password", message: "Please enter correct login and password")
        }
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userLoginTF.text = ""
        userPasswordTF.text = ""
//        userLoginTF.becomeFirstResponder()
    }
    
    @IBAction func userLoginHelpButton() {
        showAlert(title: "Oops! 🍄", message: "Your name is \(userName) 🤡")
    }
    
    @IBAction func userPasswordHelpButton() {
        showAlert(title: "Oops, again! 💊", message: "Your password is \(password) 👽")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userLoginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
