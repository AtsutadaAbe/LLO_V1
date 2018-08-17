//
//  InputValueViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/16.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//
import UIKit
class InputValueViewController: UIViewController {
    var itemName:String!
    @IBOutlet weak var val: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var radio: UISegmentedControl!
    @IBAction func slider(_ sender: UISlider) {
        let v = sender.value * 100
        val.text = v.description
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = itemName
        if (itemName == "美肌") {
            self.slider.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "お酒を飲む回数"){
            self.slider.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "毎日", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "1週間に1〜2回", at: 1, animated: true)
            self.radio.insertSegment(withTitle: "月に3回以下", at: 2, animated: true)
            self.radio.insertSegment(withTitle: "ほとんど飲まない", at: 3, animated: true)
        }
        else
        {
            self.radio.isHidden = true
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
