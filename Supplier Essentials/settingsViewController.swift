//
//  settingsViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 12/30/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class settingsViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    @IBAction func doneAction(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    @IBAction func logOutAction(_ sender: Any) {
        
        userDefaults.set(false, forKey: "loggedIn")
        performSegue(withIdentifier: "Log Out", sender: nil)
    }

}
