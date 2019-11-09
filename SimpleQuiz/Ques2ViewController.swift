//
//  Ques2ViewController.swift
//  SimpleQuiz
//
//  Created by Sidharth Nayyar on 11/8/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class Ques2ViewController: UIViewController {

    var count = 0
    var correct = 0
    var incorrect = 0
    @IBOutlet weak var opt1: UIButton!
    @IBOutlet weak var opt2: UIButton!
    @IBOutlet weak var opt3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
print(count)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func firstAnswer(_ sender: UIButton) {
    
    correctAnswer()
          result()
          opt1.backgroundColor = UIColor.red
          print(incorrect)
         incorrect=incorrect+1;
          let vc = storyboard?.instantiateViewController(identifier: "Result") as? ResultViewController
          vc?.count = count+1
          vc?.correct = correct
        vc?.incorrect = incorrect+1
           self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    @IBAction func secondAnswer(_ sender: UIButton) {
        
    correctAnswer()
    result()
           opt2.backgroundColor = UIColor.blue
           count=count+1;
           correct=correct+1;
        print(correct)
           let vc = storyboard?.instantiateViewController(identifier: "Result") as? ResultViewController
                  vc?.count = count
                vc?.correct = correct
                vc?.incorrect = incorrect
                   self.navigationController?.pushViewController(vc!, animated: true)
           
    }
    
    @IBAction func thirdAnswer(_ sender: UIButton) {
        
            correctAnswer()
            result()
         incorrect=incorrect+1;
               opt3.backgroundColor = UIColor.red
        print(incorrect)
               let vc = storyboard?.instantiateViewController(identifier: "Result") as? ResultViewController
                      vc?.count = count
                    vc?.incorrect=incorrect+1
                    vc?.correct = correct
                
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
    
    
    func correctAnswer(){
          
           if (opt1.isSelected) {
               count = count+1
               correct = correct+1
               print("correct answer")
           } else if(opt2.isSelected){
               count = count+0
               incorrect = incorrect+1
               print(incorrect)
           }else if(opt3.isSelected){
               count=count+0
               incorrect = incorrect+1
               print(incorrect)
           }
           
       }
       func result(){
           if opt1.isSelected{
               print(count)
           }else if opt2.isSelected{
               print(count)
           }else if opt3.isSelected{
               print(count)
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
