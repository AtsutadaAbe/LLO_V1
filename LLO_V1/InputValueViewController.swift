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
    @IBOutlet weak var explain: UITextView!
    @IBOutlet weak var radio: UISegmentedControl!
    @IBAction func slider(_ sender: UISlider) {
        if(itemName == "HDLコレステロール"){
            let v = sender.value * 100
            slider.minimumValue = v-90
            slider.maximumValue = v-40
            val.text = v.description
            
        }
        else{
        let v = sender.value * 100
        val.text = v.description
        
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = itemName
        if(itemName == "お酒を飲む回数"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            //全体幅をウィンドウの幅に合わせて広げる
            self.radio.frame = CGRect(x:10.0, y:400.0, width:self.view.frame.width - 20,
                                      height:100.0)
            //選択肢ごとにsetWidthで幅指定する
            self.radio.insertSegment(withTitle: "毎日", at: 0, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4 - 20, forSegmentAt: 0)
            self.radio.insertSegment(withTitle: "1週間に1~2回", at: 1, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4, forSegmentAt: 1)
            self.radio.insertSegment(withTitle: "月に3回以下", at: 2, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4, forSegmentAt: 2)
            self.radio.insertSegment(withTitle: "ほとんど飲まない", at: 3, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4 + 20, forSegmentAt: 3)
            
        }
        else if(itemName == "脂っぽいものが好き"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "近くのものを見る時、ピントがあいにくい"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at:1, animated: true)
        }
        else if(itemName == "パソコンや新聞などで目を酷使している"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "小さな文字をストレスに感じるようになった"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "目の使い過ぎで肩・首筋が凝っている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "毎日スッキリ目覚められる"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "睡眠時間が短いと感じている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "日中の集中力が低下していると感じる"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "お米、パスタ、パンなど炭水化物を食事で取りすぎている傾向にある"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "汗をかいてそのまま放置することが多い"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "睡眠時間が短いと感じている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "便秘がちである"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "食事の回数や時間が日によってバラバラである"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
        }
        else if(itemName == "蛋白"){
            self.slider.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "+", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "±", at: 1, animated: true)
            self.radio.insertSegment(withTitle: "-", at: 2, animated: true)
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
