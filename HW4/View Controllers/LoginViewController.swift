//
//  LoginViewController.swift
//  HW4
//
//  Created by Сергей Долгих on 23.10.2020.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTextField: UITextField!
    
    @IBOutlet var passwordTextField: UITextField!
    
    private let user = Person.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userNameTextField.delegate = self
        passwordTextField.delegate = self
    }
    
    // MARK: - Hide keyboard to tap
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let tabBarController = segue.destination
                as? UITabBarController else { return }
        
        for currentVC in tabBarController.viewControllers! {
            switch currentVC {
            case let welcomeVC as WelcomeViewController:
                welcomeVC.fullNameText = user.fullName
            case let biographyVC as BiographyViewController:
                biographyVC.biography = user.biography
            case let hobbyVC as HobbyViewController:
                hobbyVC.hobbyText = user.hobby
            default: break
            }
        }
    }

    // MARK: - Login action
    @IBAction func logInButtonAction() {
        if userNameTextField.text == user.user,
           passwordTextField.text == user.password {
            performSegue(withIdentifier: "showWelcomeScreen", sender: nil)
        } else {
            showAlert(with: "Oops", and: "Password incorrect")
            passwordTextField.text = nil
        }
    }
    
    @IBAction func forgotNameButtonAction() {
        showAlert(with: "Oops!", and: "Your name is \(user.user)")
    }
    
    @IBAction func forgotPasswordButtonAction() {
        showAlert(with: "Oops!", and: "Your password \(user.password)")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
    // MARK: - Keyboard text field switch
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = self.view.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        } else {
            textField.resignFirstResponder()
            logInButtonAction()
        }
        return false
    }
    // MARK: - Alert Controller
    private func showAlert(with title: String,
                           and message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok",
                                     style: .default)

        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
