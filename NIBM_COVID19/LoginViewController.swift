//
//  LoginViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-03 on 9/16/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    @IBAction func SignInBtn(_ sender: UIButton) {
        if let email = email.text, let password = password.text {
            
            Auth.auth().signIn(withEmail: email, password: password) {
//                [weak self]
                authResult, error in
                //guard let strongSelf = self else { return }
                // ...
            
                if let e = error {
                    print(e)
                // ...
            }
                else {
//                    self.performSegue(withIdentifier: loginSegway, sender: self?)
                    print("login success")
                    
                            }
            }
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
