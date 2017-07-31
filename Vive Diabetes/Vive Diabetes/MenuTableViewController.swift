//
//  MenuTableViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 31/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MenuTableViewController: UITableViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 1 {
            appDelegate.mainMenuVC?.openGlucoseController(performAction: true)
        } else if indexPath.row == 2 {
            appDelegate.mainMenuVC?.openDashboardController()
        }
    }


}
