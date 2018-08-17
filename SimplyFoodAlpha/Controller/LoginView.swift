//
//  LoginView.swift
//  SimplyFoodAlpha
//
//  Created by Bjarke Høgdall on 17/08/2018.
//  Copyright © 2018 BillionDollarBrothers. All rights reserved.
//

import UIKit
import Firebase

class LoginView: UIViewController {

    
    // Oulets
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            }
            else {
                print("Login Successful")
                self.performSegue(withIdentifier: "goToMain", sender: self)
            }
        }
        
    }
    
    
    
    

}
