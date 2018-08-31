//
//  InputValueViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/16.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//
import UIKit
class InputValueViewController: UIViewController {
    
    //設定データ
    var data:ValueData!

    //項目名称
    var itemName:String!
    @IBOutlet weak var val: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var explain: UITextView!
    @IBOutlet weak var radio: UISegmentedControl!
    @IBAction func inputRadio(_ sender: UISegmentedControl) {
        //選択肢の値を設定データオブジェクトに保持
        data.inputVal = sender.selectedSegmentIndex
    }
    @IBAction func inputSlider(_ sender: UISlider) {
        //スライダーの値を設定データオブジェクトに保持
        let value:Int = Int(sender.value)
        data.inputVal = value
        val.text = value.description
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
            self.radio.insertSegment(withTitle: "ほとんど飲まない", at: 0, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4 + 20, forSegmentAt: 0)
            self.radio.insertSegment(withTitle: "月に3回以下", at: 1, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4, forSegmentAt: 1)
            self.radio.insertSegment(withTitle: "1週間に1~2回", at: 2, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4, forSegmentAt: 2)
            self.radio.insertSegment(withTitle: "毎日", at: 3, animated: true)
            self.radio.setWidth((self.view.frame.width-20)/4 - 20, forSegmentAt: 3)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "脂っぽいものが好き"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "近くのものを見る時、ピントがあいにくい"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at:1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "パソコンや新聞などで目を酷使している"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "小さな文字をストレスに感じるようになった"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "目の使い過ぎで肩・首筋が凝っている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "毎日スッキリ目覚められる"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "睡眠時間が十分にとれている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "日中集中して物事に取り組める"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "お米、パスタ、パンなど炭水化物を食事で取りすぎている傾向にある"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

            
        }
        else if(itemName == "汗をかいてそのまま放置することが多い"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal
            
        }
        else if(itemName == "睡眠時間が短いと感じている"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal
            
        }
        else if(itemName == "便秘がちである"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal

        }
        else if(itemName == "食事の回数や時間が日によってバラバラである"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at: 1, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal
            
        }
        else if(itemName == "蛋白"){
            self.slider.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "+", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "±", at: 1, animated: true)
            self.radio.insertSegment(withTitle: "-", at: 2, animated: true)
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal
            
        }
        else if(itemName == "HDLコレステロール"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 60
            self.slider.minimumValue = 10
            self.slider.value = Float(data.inputVal)
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "HDLコレステロールは善玉コレステロールと呼ばれています。\nHDLコレステロールは血管内壁にへばりついて動脈硬化を引き起こすコレステロールを引き抜いて、肝臓まで運ぶ働きをします。\n総コレステロール値が高くなくても、HDLコレステロール値が低いと、動脈硬化が進んで狭心症や心筋梗塞を引き起こしやすい事が分かっています。\n食事はエネルギーの摂取量を適正にするよう心がけましょう。脂肪のとり方にも注意が必要で、動物性脂肪を控え、その分は植物油（リノール酸、オレイン酸）や新鮮な魚の油（EPA、DHA）で補います。海藻やキノコなどを積極的にとり、植物繊維の摂取量を増やすことも大切です。\n近年の研究では、トマトに豊富に含まれているリコピン（赤色の色素）にHDLコレステロールを増やす働きがある事が確認されていて、ビタミンEの100倍以上とされる抗酸化作用とともに注目されています。"
        }
        else if(itemName == "LDLコレステロール"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 250
            self.slider.minimumValue = 40
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "っっっっっっっっl"
        }
        else if(itemName == "中性脂肪"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 550
            self.slider.minimumValue = 20
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "sっksk"
        }
        else if(itemName == "AST"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 70
            self.slider.minimumValue = 10
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "dfghjk"
        }
        else if(itemName == "ALT"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 70
            self.slider.minimumValue = 10
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "dfghjk"
        }
        else if(itemName == "γ-GT（γ-GTP）"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 150
            self.slider.minimumValue = 0
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "dfghjk"
        }
        else if(itemName == "eGFR"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 70
            self.slider.minimumValue = 30
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "dfghjk"
        }
        else if(itemName == "空腹時血糖"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 150
            self.slider.minimumValue = 50
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "dfghjk"
        }
            
        else
        {
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 100
            self.slider.minimumValue = 0
            self.slider.value = Float(data.inputVal)
            //スライダー値のラベル表示
            val.text = data.inputVal.description
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
