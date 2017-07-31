//
//  LoginViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 19/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var hereButtonOutlet: UIButton!
    @IBOutlet weak var forgotPasswordOutlet: UIButton!
    @IBOutlet weak var passwordEditText: UITextField!
    @IBOutlet weak var showPasswordOutlet: UIButton!
    
    var attrs = [
        NSForegroundColorAttributeName : UIColor.white,
        NSUnderlineStyleAttributeName : 1] as [String : Any]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let hereButtonTitleStr = NSMutableAttributedString(string:"aquí", attributes:attrs)
        let forgotPasswordTitleStr = NSMutableAttributedString(string:"¿Olvidaste tu contraseña?", attributes:attrs)
        
        hereButtonOutlet.setAttributedTitle(hereButtonTitleStr, for: .normal)
        forgotPasswordOutlet.setAttributedTitle(forgotPasswordTitleStr, for: .normal)
    }
    
    @IBAction func showPassword(_ sender: Any) {
        if passwordEditText.isSecureTextEntry {
            showPasswordOutlet.setImage(UIImage(named: "password_on") , for: .normal)
        } else {
            showPasswordOutlet.setImage(UIImage(named: "password_off") , for: .normal)
        }
        
        passwordEditText.isSecureTextEntry = !passwordEditText.isSecureTextEntry
    }
}
