//
//  safeAcctionViewController.swift
//  
//
//  Created by Digital-06 on 9/18/20.
//

import UIKit

class safeAcctionViewController: UIViewController {

    @IBOutlet weak var safeImage: UIImageView!
    
    
    @IBOutlet weak var saftyLable: UILabel!
    
    
    let safStep = [
        "Used FaceMask",
        "Wash Your hand",
        "Have You Keep Distence in public places",
        "Used Sanitizer"
    ]
    
    var sfNo=0

    
    override func viewDidLoad() {
        super.viewDidLoad()
  DisImage()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttenBackpressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
       
        
    }
    
    func DisImage(){
        safeImage.image = UIImage(named: "safty\(sfNo).png")
        saftyLable.text = safStep[sfNo]
    }
    
    
    @IBAction func nextButtenPressed(_ sender: UIButton) {
        
        if sfNo + 1 < safStep.count{
            sfNo += 1
        }
        DisImage()
        
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
