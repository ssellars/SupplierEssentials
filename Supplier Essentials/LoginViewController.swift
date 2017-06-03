//
//  LoginViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 11/7/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var userEmailTextField: UITextField!
    @IBOutlet var userPasswordTextField: UITextField!
    @IBOutlet weak var login: UIButton!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userEmailTextField.delegate = self
        userPasswordTextField.delegate = self
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        let loggedIn = userDefaults.bool(forKey: "loggedIn")
        print("loggedIn: \(loggedIn)")
        
        if loggedIn {
            performSegue(withIdentifier: "Login Segue", sender: nil)
        }
    }
    
    
    
    @IBAction func loginAction(_ sender: Any) {
        
        let emailAddress = userEmailTextField.text ?? ""
        let password = userPasswordTextField.text ?? ""
        
        if emailAddress == ""  ||  password == "" {
            let alert = showSimpleAlert(title: "", message: "Please enter your email address and password to continue.")
            present(alert, animated: true, completion: nil)
            return
        }
        
        let loginResponse:String = ApiService().login(emailAddress: emailAddress, password: password)
        
        if loginResponse == "Success" {
            userDefaults.set(true, forKey: "loggedIn")
            performSegue(withIdentifier: "Login Segue", sender: nil)
        }
        else {
            let alert = showSimpleAlert(title: loginResponse, message: "")
            present(alert, animated: true, completion: nil)
            return
        }
    }
    
    
    //
    // Function : textFieldShouldReturn()
    //
    //
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if let nextField = textField.superview?.viewWithTag(textField.tag + 1) as? UITextField {
            nextField.becomeFirstResponder()
        }
        else {
            textField.resignFirstResponder()
            loginAction(self)
        }
        return false
    }
}
