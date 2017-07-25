//
//  RegisterGluoseViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 24/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class RegisterGluoseViewController: UIViewController {

    @IBOutlet weak var glucoseTextField: UITextField!
    @IBOutlet weak var dayTextFied: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var hourTextField: UITextField!
    @IBOutlet weak var minuteTextField: UITextField!
    
    let width = CGFloat(2.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let glucoseBorder = CALayer()
        glucoseBorder.borderColor = UIColor.black.cgColor
        glucoseBorder.frame = CGRect(x: 0, y: glucoseTextField.frame.size.height - width, width:
            glucoseTextField.frame.size.width, height: glucoseTextField.frame.size.height)
        
        let dayBorder = CALayer()
        dayBorder.borderColor = UIColor.black.cgColor
        dayBorder.frame = CGRect(x: 0, y: dayTextFied.frame.size.height - width, width:
            dayTextFied.frame.size.width, height: dayTextFied.frame.size.height)
        
        let monthBorder = CALayer()
        monthBorder.borderColor = UIColor.black.cgColor
        monthBorder.frame = CGRect(x: 0, y: monthTextField.frame.size.height - width, width:
            monthTextField.frame.size.width, height: monthTextField.frame.size.height)
        
        let yearBorder = CALayer()
        yearBorder.borderColor = UIColor.black.cgColor
        yearBorder.frame = CGRect(x: 0, y: yearTextField.frame.size.height - width, width:
            yearTextField.frame.size.width, height: yearTextField.frame.size.height)
        
        let hourBorder = CALayer()
        hourBorder.borderColor = UIColor.black.cgColor
        hourBorder.frame = CGRect(x: 0, y: hourTextField.frame.size.height - width, width:
            hourTextField.frame.size.width, height: hourTextField.frame.size.height)
        
        let minuteBorder = CALayer()
        minuteBorder.borderColor = UIColor.black.cgColor
        minuteBorder.frame = CGRect(x: 0, y: minuteTextField.frame.size.height - width, width:
            minuteTextField.frame.size.width, height: minuteTextField.frame.size.height)
        
        glucoseBorder.borderWidth = width
        glucoseTextField.layer.addSublayer(glucoseBorder)
        glucoseTextField.layer.masksToBounds = true
        
        dayBorder.borderWidth = width
        dayTextFied.layer.addSublayer(dayBorder)
        dayTextFied.layer.masksToBounds = true
        
        monthBorder.borderWidth = width
        monthTextField.layer.addSublayer(monthBorder)
        monthTextField.layer.masksToBounds = true
        
        yearBorder.borderWidth = width
        yearTextField.layer.addSublayer(yearBorder)
        yearTextField.layer.masksToBounds = true
        
        hourBorder.borderWidth = width
        hourTextField.layer.addSublayer(hourBorder)
        hourTextField.layer.masksToBounds = true
        
        minuteBorder.borderWidth = width
        minuteTextField.layer.addSublayer(minuteBorder)
        minuteTextField.layer.masksToBounds = true
    }

}
