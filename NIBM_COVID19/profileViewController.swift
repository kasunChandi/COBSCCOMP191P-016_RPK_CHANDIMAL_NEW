//
//  profileViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-06 on 9/18/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit
import Firebase

class profileViewController: UIViewController {

    
    @IBOutlet weak var lbFanme: UILabel!
    
    
    @IBOutlet weak var lbLastName: UILabel!
    
    
    
    @IBOutlet weak var lbEmail: UILabel!
    
    
    @IBOutlet weak var lbRole: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var ref: DatabaseReference!
        
        ref = Database.database().reference()
        let UId = Auth.auth().currentUser?.uid
        ref.child("users").child(UId!).observeSingleEvent(of: .value, with:{(snapshot) in
            
            if let user = snapshot.value as? [String : String] {
                print(user)
                self.lbFanme.text = user["username"]!
                self.lbLastName.text = user["lastname"]
                self.lbEmail.text = user["email"]
                self.lbRole.text = user["role"]
            }
        }){ (error) in
            print(error.localizedDescription)
        }
        
    }
    
    

    @IBAction func btnBackPress(_ sender: UIButton) {
        
        
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    @IBAction func logoutButtenPressed(_ sender: UIButton) {
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            self.navigationController?.popViewController(animated: true)
        }
        catch let  SignOutError as NSError {
            print("Error: %@", SignOutError)
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
