//
//  ViewController.swift
//  SimpleQuiz
//
//  Created by Sidharth Nayyar on 11/8/19.
//  Copyright © 2019 Sidharth Nayyar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func btnStart(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "Ques1") as? Ques1ViewController//identify the next navigation with view controller
        self.navigationController?.pushViewController(vc!, animated: true)// to use the navigation
                
        
    }
    
}

