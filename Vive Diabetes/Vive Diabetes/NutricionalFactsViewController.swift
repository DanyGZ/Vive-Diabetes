//
//  NutricionalFactsViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 28/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class NutricionalFactsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.7)

        // Do any additional setup after loading the view.
    }

    @IBAction func closeDialogAction(_ sender: Any) {
        self.view.removeFromSuperview()
    }
}
