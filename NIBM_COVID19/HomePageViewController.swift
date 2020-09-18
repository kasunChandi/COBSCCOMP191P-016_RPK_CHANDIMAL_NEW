//
//  HomePageViewController.swift
//  
//
//  Created by Digital-06 on 9/18/20.
//

import UIKit

class HomePageViewController: UIViewController {

    
    @IBOutlet weak var imgUserStatus: UIImageView!
    
    
    
    @IBOutlet weak var lbUserStatus: UILabel!
    
    
    private var _userStstusData: String!
    
    var userStstusData : String{
    get{
    return  _userStstusData
    }
    set{
    _userStstusData = newValue
    }
    
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()

        
        lbUserStatus.text = _userStstusData
        
        if _userStstusData == "Good"
        {
            imgUserStatus.image = UIImage( named: "userty1")
        }
            
        else if _userStstusData == "Meduim"
        {
            imgUserStatus.image = UIImage( named: "userty2")
        }
            
        else if _userStstusData == "In Risk"
        {
            imgUserStatus.image = UIImage( named: "userty3")
        }
        
        
        
        // Do any additional setup after loading the view.
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
