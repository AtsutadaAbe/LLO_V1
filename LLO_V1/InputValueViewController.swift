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
            
            self.explain.text = "sdfgh"
            
            //選択されている項目を復元
            self.radio.selectedSegmentIndex = data.inputVal
            
        }
        else if(itemName == "歩いたり階段を登る際、スムーズに移動できる"){
            self.slider.isHidden = true
            self.explain.isHidden = true
            self.radio.removeAllSegments()
            self.radio.insertSegment(withTitle: "はい", at: 0, animated: true)
            self.radio.insertSegment(withTitle: "いいえ", at:1, animated: true)
            
        }
        else if(itemName == "HDLコレステロール"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 60
            self.slider.minimumValue = 10
            self.slider.value = Float(data.inputVal)
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "HDLコレステロールは善玉コレステロールと呼ばれています。\nHDLコレステロールは血管内壁にへばりついて動脈硬化を引き起こすコレステロールを引き抜いて、肝臓まで運ぶ働きをします。\n総コレステロール値が高くなくても、HDLコレステロール値が低いと、動脈硬化が進んで狭心症や心筋梗塞を引き起こしやすい事が分かっています。\n\n食事はエネルギーの摂取量を適正にするよう心がけましょう。脂肪のとり方にも注意が必要で、動物性脂肪を控え、その分は植物油（リノール酸、オレイン酸）や新鮮な魚の油（EPA、DHA）で補います。海藻やキノコなどを積極的にとり、植物繊維の摂取量を増やすことも大切です。\n近年の研究では、トマトに豊富に含まれているリコピン（赤色の色素）にHDLコレステロールを増やす働きがある事が確認されていて、ビタミンEの100倍以上とされる抗酸化作用とともに注目されています。"
        }
        else if(itemName == "LDLコレステロール"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 250
            self.slider.minimumValue = 40
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "一般的に悪玉と言われているLDLコレステロール。LDLは細胞内に取り込まれなかった余剰なコレステロールを血管内に放置し、動脈硬化を引き起こす原因となります。\nLDLコレステロールや中性脂肪の数値が高い状態のまま放置していると動脈硬化を招き、狭心症や心筋梗塞、脳梗塞など重大な病気のリスクが高まります。\n\n食事は動物性脂肪の多い肉類は控えるようにして、代わりに不飽和脂肪酸（DHAやEPA）を豊富に含むイワシやサンマ、サバ、カツオ、マグロなどの青魚を積極的に食べるようにするといいです。\n野菜や海藻、きのこ類に含まれる食物繊維は血中コレステロールを低下させる作用があります。\n\nまた、動脈硬化を促進させる喫煙は控えた方が良いです。喫煙は悪玉のLDLコレステロールと中性脂肪を増加させ、HDLコレステロール（善玉）を減らすため、喫煙習慣のある人は動脈硬化のリスクが大きく上昇します。\n\nまた、適度な運動は血液の循環を良くして善玉コレステロールを増加させます。効果的な運動は、有酸素運動（ウォーキングや長距離の水泳など）を継続的に行う事です。"
        }
        else if(itemName == "中性脂肪"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 550
            self.slider.minimumValue = 20
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "中性脂肪は砂糖などの糖質（炭水化物）、動物性脂肪を主な原料として肝臓で作られます。\n食事でこれらを多く摂りすぎると、皮下脂肪の主成分として蓄積されます。血液中の中性脂肪やコレステロールが増えすぎる（脂質異常症）と、動脈硬化の危険が高まります。\n\n中性脂肪値が高値を示す人の大半は、肥満や食べ過ぎ、運動不足、飲酒によるものです。飲酒している人は禁酒するか、週2回程度に禁酒します。肥満や運動不足の人は、運動する習慣をつけ、脂肪や脂質（炭水化物）の多い食事を控えるなどといった努力で、大抵改善できます。\n\n食生活では、動物性脂肪が多い食品（牛や豚の脂身、ベーコン、ハム、ソーセージ、チーズ、バター、生クリーム）や糖質（炭水化物）を摂りすぎない事が大切です。\n中性脂肪を下げるために積極的に食べたいのが、アジ、イワシ、サバ、サンマ、マグロなどの青魚です。これら青魚の油には不飽和脂肪酸（EPAとDHA）が豊富に含まれています。このEPAとDHAには、肝臓での中性脂肪の合成を抑えて、血中の中性脂肪を減らす作用があります。\nその上、血液を固める働きのある血小板が凝集するのを防ぐため、心筋梗塞や脳梗塞の引き金となる血栓ができるのを予防してくれます。"
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
            self.explain.text = "γ-GT（γ-GTP）はタンパク質を分解する酵素で、毒性のあるアルコールや薬剤などが肝細胞を破壊したり、結石やがんなどによって胆管がつまった時などに血液中に出てきます。\nγ-GT（γ-GTP）は肝臓や胆管に病気があるときは他の酵素より早期に反応を示すため、肝臓障害の鋭敏なマーカーとして用いられています。\nγ-GT（γ-GTP）はアルコールに敏感で、ほぼ毎日お酒を飲んでいる方では高い数値が出やすくなります。\n\nγ-GT（γ-GTP）の数値が高いからといって、すぐに肝臓や胆道の病気だと深刻に考える必要はありません。\n適切な検査を受けて、異常が認められれば医師の指示に従って治療を始めましょう。"
        }
        else if(itemName == "クレアチニン（男性）"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 2
            self.slider.minimumValue = 0
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "クレアチニンは尿酸や尿素窒素と同様に老廃物の一つで、腎臓が正常に働いていれば、尿として体外に排出されます。\n血液中のクレアチニンが多いということは、腎機能が障害されているということになります。\n\n異常があった場合日常生活では、塩分やタンパク質の摂取を制限する食事、適度な運動を心がけるとともに、肥満、高血圧、脱水などの憎悪因子を避けるようにしましょう。"
        }
        else if(itemName == "クレアチニン（女性）"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 2
            self.slider.minimumValue = 0
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "クレアチニンは尿酸や尿素窒素と同様に老廃物の一つで、腎臓が正常に働いていれば、尿として体外に排出されます。\n血液中のクレアチニンが多いということは、腎機能が障害されているということになります。\n\n異常があった場合日常生活では、塩分やタンパク質の摂取を制限する食事、適度な運動を心がけるとともに、肥満、高血圧、脱水などの憎悪因子を避けるようにしましょう。"
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
            self.explain.text = "血糖とは、一般的には血液中のブドウ糖のことを意味します。\nブドウ糖はエネルギー源として利用されているため、血液中のブドウ糖（血糖）は一定の濃度に保たれています。そのコントロールを行なっているインスリンが不足したり、あるいはインスリンの働きが弱くなったりすると、血液中に多量の糖が存在することになってしまいます。\n\n血糖を調整しているインスリンが不足すると、血液中にブドウ糖があるれて高血糖になり、逆に過剰になると低血糖になります。どちらの場合も、血糖の異常な増減は体に悪影響をもたらします。\n血糖の検査は、高血糖の疾患である糖尿病の有無、その治療や管理の指標として欠かせません。"
        }
            
        else if(itemName == "HbA1c"){
            self.radio.isHidden = true
            //スライダーの最大と最小・設定値を復元
            self.slider.maximumValue = 8
            self.slider.minimumValue = 3
            //スライダー値のラベル表示
            val.text = data.inputVal.description
            self.explain.text = "HbA1cは糖化ヘモグロビンともいい、赤血球の中で体内に酸素を運ぶ役割のヘモグロビンと血液中のブドウ糖が結合したものです。\n血糖値や尿糖値が、検査前の食事や飲酒、検査時間によって変動するのに対し、HbA1cはそれらにほとんど影響を受けない特徴があるため、HbA1cの値を調べれば過去１〜２ヶ月の血糖の平均的な状況を知る事ができます。"
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
