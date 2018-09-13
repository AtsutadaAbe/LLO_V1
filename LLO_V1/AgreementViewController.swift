//
//  AgreementViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/09.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class AgreementViewController: UIViewController {
    @IBAction func agree(_ sender: UIButton) {
        if (SettingViewController.datas["agree"] == nil) {
            //まだ同意していない
            let agreeData = ValueData()
            agreeData.inputVal = 1
            SettingViewController.datas["agree"] = agreeData
        }
    }
    @IBAction func notAgree(_ sender: UIButton) {
        self.navigationController!.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
