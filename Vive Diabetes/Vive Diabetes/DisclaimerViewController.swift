//
//  DisclaimerViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 20/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class DisclaimerViewController: UIViewController {
    
    @IBOutlet weak var responsibilityCheck: UIImageView!
    @IBOutlet weak var privacityCheck: UIImageView!
    
    var responsibilityAccepted = false
    var privacityAccepted = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let rightButtonItem = UIBarButtonItem.init(title: "Next", style: .done, target: self,
                                                   action: #selector(DisclaimerViewController.rightButtonAction))
        self.navigationItem.rightBarButtonItem = rightButtonItem
    }
    
    func rightButtonAction(){
        if responsibilityAccepted && privacityAccepted {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mainMenu")
            self.present(nextViewController, animated: true, completion: nil)
        }
    }
    
    @IBAction func responsibilityAccept(_ sender: Any) {
        responsibilityAccepted = true
        responsibilityCheck.image =  UIImage(named: "check_on")
    }
    
    
    @IBAction func privacityAccept(_ sender: Any) {
        privacityAccepted = true
        privacityCheck.image =  UIImage(named: "check_on")
    }

}
