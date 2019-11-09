//
//  Ques1ViewController.swift
//  SimpleQuiz
//
//  Created by Sidharth Nayyar on 11/8/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class Ques1ViewController: UIViewController {

    @IBOutlet weak var opt1: UIButton!
    @IBOutlet weak var opt2: UIButton!
    @IBOutlet weak var opt3: UIButton!
    var count = 0
    var correct = 0
    var incorrect = 0
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func firstAnswer(_ sender: UIButton) {
        correctAnswer()
        result()
        opt1.backgroundColor = UIColor.blue
        count=count+1
        correct=correct+1
        print(count)
        let vc = storyboard?.instantiateViewController(identifier: "Ques2") as? Ques2ViewController
        vc?.count = count
        vc?.correct = correct
        vc?.incorrect = incorrect
         self.navigationController?.pushViewController(vc!, animated: true)
//        opt1.isSelected = !opt1.isSelected
//        if(count==1){
//            opt1.backgroundColor = UIColor.blue
//        } else if(count==0){
//            opt1.backgroundColor = UIColor.red
//        }
//          //  opt1.backgroundColor = [UIColor blackColor]
//
        }
    
    @IBAction func secondAnswer(_ sender: UIButton) {
        correctAnswer()
               result()
        opt2.backgroundColor = UIColor.red
            incorrect=incorrect+1;
        let vc = storyboard?.instantiateViewController(identifier: "Ques2") as? Ques2ViewController
               vc?.count = count
        vc?.incorrect = incorrect
                self.navigationController?.pushViewController(vc!, animated: true)
        
//               opt1.isSelected = !opt1.isSelected
//               if(count==1){
//                   opt1.backgroundColor = UIColor.blue
//               } else if(count==0){
//                   opt1.backgroundColor = UIColor.red
//               }
                 //  opt1.backgroundColor = [UIColor blackColor]
                   
               }
    
    @IBAction func thirdAnswer(_ sender: Any) {
        correctAnswer()
        result()
               opt3.backgroundColor = UIColor.red
               incorrect=incorrect+1;
               let vc = storyboard?.instantiateViewController(identifier: "Ques2") as? Ques2ViewController
                      vc?.count = count
                vc?.incorrect=incorrect
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
