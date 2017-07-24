//
//  DisclaimerViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 20/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class DisclaimerViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let rightButtonItem = UIBarButtonItem.init(title: "Next", style: .done, target: self,
                                                   action: #selector(DisclaimerViewController.rightButtonAction))
        self.navigationItem.rightBarButtonItem = rightButtonItem
    }
    
    func rightButtonAction(){
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "mainMenu")
        self.present(nextViewController, animated: true, completion: nil)
    }

}
