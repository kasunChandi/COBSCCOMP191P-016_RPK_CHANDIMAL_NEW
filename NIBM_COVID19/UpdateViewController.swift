//
//  UpdateViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-06 on 9/21/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit

class UpdateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func updateTemp(_ sender: UIButton) {
        
        let alert = UIAlertController(title: "Temprature update Success", message: "Please  ok.", preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    
    

    @IBAction func bakbutten(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
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
