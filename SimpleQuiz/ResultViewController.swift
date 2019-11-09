//
//  ResultViewController.swift
//  SimpleQuiz
//
//  Created by Sidharth Nayyar on 11/9/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var lblCorrect: UILabel!
    @IBOutlet weak var lblincorrect: UILabel!
    @IBOutlet weak var lblCount: UILabel!
    var count = 0
       var correct = 0
       var incorrect = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        lblCount.text=String(count)
         lblCorrect.text=String(correct)
    lblincorrect.text=String(incorrect)
        // Do any additional setup after loading the view.
    }
    
    
    
//    func correctAnswer(){
//
//              if (opt1.isSelected) {
//                  count = count+1
//                  correct = correct+1
//                  print("correct answer")
//              } else if(opt2.isSelected){
//                  count = count+0
//                  incorrect = incorrect+1
//                  print(incorrect)
//              }else if(opt3.isSelected){
//                  count=count+0
//                  incorrect = incorrect+1
//                  print(incorrect)
//              }
//
//          }
//          func result(){
//              if opt1.isSelected{
//                  print(count)
//              }else if opt2.isSelected{
//                  print(count)
//              }else if opt3.isSelected{
//                  print(count)
//              }
//          }
//
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
