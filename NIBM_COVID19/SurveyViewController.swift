//
//  SurveyViewController.swift
//  NIBM_COVID19
//
//  Created by Digital-03 on 9/16/20.
//  Copyright © 2020 NIBM. All rights reserved.
//

import UIKit

class SurveyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
showImage()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var SurveyImages: UIImageView!
    
    @IBOutlet weak var QuizLbl: UILabel!
    
    
    
    @IBOutlet weak var btnAnswer1: UIButton!
    
    
    @IBOutlet weak var btnAnswer2: UIButton!
    
    
    let quizlist = [
        ["Have you been tarvel last 14 days?","No"],
        ["Are you having above sympotoms?","No"],
        ["Have You Keep Distence in public places", "Yes"],
        ["Have you been exposed with crowded places?","No"],
        ["Have you been interact with sick person? ","No"]
    ]
    
    var que=0
    var total=0
 
    @IBAction func getuserData(_ sender: UIButton) {
        
        let usrAnswer = sender.currentTitle
         let newAnswer = quizlist[que][1]
        
        if newAnswer == usrAnswer {
            print("Write")
            total += 1
            print(total)
        }
        else{
            print("Wrong")
        }
        
        if que + 1 < quizlist.count{
            que += 1
        }
        showImage()
    }
    
    func showImage(){
        SurveyImages.image = UIImage(named: "icon\(que).png")
        QuizLbl.text = quizlist[que][0]
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
