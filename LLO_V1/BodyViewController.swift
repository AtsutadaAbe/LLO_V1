//
//  BodyViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/12.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class BodyViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("画面遷移先：" + segue.destination.description)
        let secondViewController:ItemListViewController = segue.destination as! ItemListViewController
        // 遷移先のViewControllerに対してsegueの名称を渡す
        secondViewController.sendText = segue.identifier!.description
        
    }
    
}
