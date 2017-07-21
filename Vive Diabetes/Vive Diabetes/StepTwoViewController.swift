//
//  StepTwoViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 19/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class StepTwoViewController: UIViewController {
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonAction(_ sender: Any) {
        appDelegate.boardingScreen?.turnNextPage(actualPage: 2)
    }
    

}
