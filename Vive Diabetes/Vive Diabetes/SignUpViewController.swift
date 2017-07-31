//
//  SignUpViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 20/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var verifyPasswordTextField: UITextField!
    @IBOutlet weak var showPassword: UIButton!
    @IBOutlet weak var showVerifyPassword: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func showPasswordAction(_ sender: Any) {
        if passwordTextField.isSecureTextEntry {
            showPassword.setImage(UIImage(named: "password_on") , for: .normal)
        } else {
            showPassword.setImage(UIImage(named: "password_off") , for: .normal)
        }
        
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    
    @IBAction func showVerifyPasswordAction(_ sender: Any) {
        if verifyPasswordTextField.isSecureTextEntry {
            showVerifyPassword.setImage(UIImage(named: "password_on") , for: .normal)
        } else {
            showVerifyPassword.setImage(UIImage(named: "password_off") , for: .normal)
        }
        
        verifyPasswordTextField.isSecureTextEntry = !verifyPasswordTextField.isSecureTextEntry
    }
    

}
