//
//  LoginViewController.swift
//  Supplier Essentials
//
//  Created by Sean Sellars on 11/7/16.
//  Copyright © 2016 Sean Sellars. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var userEmailTextField: UITextField!
    
    
    @IBOutlet var userPasswordtextField: UITextField!
    
    
    @IBOutlet weak var login: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*(323) 394-1339
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
