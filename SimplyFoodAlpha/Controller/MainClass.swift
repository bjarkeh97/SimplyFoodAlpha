//
//  Main.swift
//  SimplyFoodAlpha
//
//  Created by Bjarke Høgdall on 17/08/2018.
//  Copyright © 2018 BillionDollarBrothers. All rights reserved.
//

import UIKit
import Firebase

class MainClass: UIViewController {

    // Outlets
    @IBOutlet weak var emailTextField: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.setHidesBackButton(true, animated:true)
        
        let user = Auth.auth().currentUser
        if let user = user {
            emailTextField.text = user.email!
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        do {
            try Auth.auth().signOut()
            print("successfully signed out")
            navigationController?.popToRootViewController(animated: true)
        }
        catch {
            print("error in signing out")
        }
    }
    
    
}
