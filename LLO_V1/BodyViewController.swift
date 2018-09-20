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
    @IBAction func buttonHead(_ sender: UIButton) {
        if (buttonHead.backgroundColor == UIColor.red) {
            //商品一覧へ画面へナビゲーション
            let nextView = self.storyboard?.instantiateViewController(
                withIdentifier: "ItemListView") as! ItemListViewController
            // 遷移先のViewControllerに対してsegueの名称を渡す
            nextView.sendText = "SegueHead"
            self.navigationController?.pushViewController(nextView,animated: true)
        }
    }
    @IBAction func buttonStomach(_ sender: UIButton) {
        if (buttonStomach.backgroundColor == UIColor.red) {
            //商品一覧へ画面へナビゲーション
            let nextView = self.storyboard?.instantiateViewController(
                withIdentifier: "ItemListView") as! ItemListViewController
            // 遷移先のViewControllerに対してsegueの名称を渡す
            nextView.sendText = "SegueStomach"
            self.navigationController?.pushViewController(nextView,animated: true)
        }
    }
    @IBAction func buttonLeg(_ sender: UIButton) {
        if (buttonLeg.backgroundColor == UIColor.red) {
            //商品一覧へ画面へナビゲーション
            let nextView = self.storyboard?.instantiateViewController(
                withIdentifier: "ItemListView") as! ItemListViewController
            // 遷移先のViewControllerに対してsegueの名称を渡す
            nextView.sendText = "SegueLeg"
            self.navigationController?.pushViewController(nextView, animated: true)
        }
    }
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
        var redLeg = false
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
            //足
            if(d.key == "歩いたり階段を登る際、スムーズに移動できる" && d.value.inputVal == 1){
                redLeg = true
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
        //足の色付け
        if(redLeg == true){
            buttonLeg.backgroundColor = UIColor.red
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
