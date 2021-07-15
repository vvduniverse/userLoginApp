
import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var userLoginTF: UITextField!
    @IBOutlet weak var userPasswordTF: UITextField!
    
    private let userName = "Eugenia"
    private let password = "swiftbook"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = userLoginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func loginButton() {
        if userLoginTF.text == userName && userPasswordTF.text == password {
            performSegue(withIdentifier: "welcomeVCSegue", sender: nil)
        } else {
            showAlert(title: "Invalid login or password", message: "Please enter correct login and password")
        }
    }
    
    @IBAction func userLoginHelpButton() {
        showAlert(title: "Oops! 🍄", message: "Your name is \(userName) 🤡")
    }
    
    @IBAction func userPasswordHelpButton() {
        showAlert(title: "Oops, again! 💊", message: "Your password is \(password) 👽")
    }
        
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        userPasswordTF.text = ""
        userLoginTF.text = ""
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        userLoginTF.delegate = self
//        userPasswordTF.delegate = self
//    }
    
}
//extension LoginViewController: UITextFieldDelegate {
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.userPasswordTF.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if textField == userLoginTF {
//            userPasswordTF.becomeFirstResponder()
//        }
//        return true
//    }

}
