//
//  RegisterViewController.swift
//  SimplyFoodAlpha
//
//  Created by Bjarke Høgdall on 17/08/2018.
//  Copyright © 2018 BillionDollarBrothers. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    
    // Outlets
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButton(_ sender: Any) {
        Auth.auth().createUser(withEmail: usernameTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("succes")
            }
        }
    }

}
