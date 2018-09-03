//
//  StartViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/09.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    @IBOutlet weak var comment: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
     let comment = arc4random_uniform(10)
        if(comment == 1){
            self.comment.text = "こんにちは"
        }
        else if(comment == 2){
            self.comment.text = "こんばんは"
        }
        else if(comment == 3){
            self.comment.text = "おはよう"
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
