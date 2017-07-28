//
//  ReceiptViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 25/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class ReceiptViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func showDialogAction(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "nutritionalInfoVC") as! NutricionalFactsViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
}
