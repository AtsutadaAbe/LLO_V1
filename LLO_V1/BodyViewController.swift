//
//  BodyViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/12.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class BodyViewController: UIViewController {
    
    @IBOutlet weak var buttonHead: UIButton!
    @IBOutlet weak var buttonStomach: UIButton!
    @IBOutlet weak var buttonLeg: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //設定データオブジェクトの内容確認
        if (SettingViewController.datas.count > 0) {
            for d in SettingViewController.datas {
                print(d.key + ":" + d.value.inputVal.description)
            }
            
        }
        
        var redStomach = false
        var redHead = false
        for d in SettingViewController.datas {
            //肝機能
            if ((d.key == "AST" && d.value.inputVal >= 31)
                || (d.key == "ALT" && d.value.inputVal >= 31)
                || (d.key == "γ-GT（γ-GTP）" && d.value.inputVal >= 51)
                || (d.key == "お酒を飲む回数" && d.value.inputVal == 3)) {
                //3はお酒を飲む回数は毎回を示す
                redStomach = true
            }
            //頭
            if((d.key == "毎日スッキリ目覚められる" && d.value.inputVal == 1)
                || (d.key == "睡眠時間が十分にとれている" && d.value.inputVal == 1))
                || (d.key == "日中集中して物事に取り組める" && d.value.inputVal == 1){
                redHead = true
            }
            
            
        }
        //お腹の色付け
        if(redStomach == true){
            buttonStomach.backgroundColor = UIColor.red
        }
        //頭の色付け
        if(redHead == true){
            buttonHead.backgroundColor = UIColor.red
        }
        
        
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
