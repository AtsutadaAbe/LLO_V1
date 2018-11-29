//
//  SettingViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/16.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

import AVFoundation
class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,AVAudioPlayerDelegate {
    
    var audioPlayer:AVAudioPlayer!
    
    // 設定データ保持オブジェクト
    static var datas: Dictionary<String, ValueData> = [:]
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        //更新ボタンが押された時
        self.navigationController!.popToRootViewController(animated: true)
        
        if(audioPlayer.isPlaying){
            audioPlayer.stop()
        }else{
            audioPlayer.play()
        }
    }
    @IBOutlet weak var tableView: UITableView!
    // セクション
    let continent = ["血中濃度", "肝機能","腎臓","糖尿病","目","熟睡度","美肌","膝"]
    // セクション内の項目
    let items1 = ["HDLコレステロール","LDLコレステロール","中性脂肪"]
    let items2 = ["AST","ALT","γ-GT（γ-GTP）","お酒を飲む回数"]
    var items3 = ["クレアチニン（男性）","クレアチニン（女性）","eGFR","蛋白"]
    let items4 = ["空腹時血糖","HbA1c","お酒を飲む回数","脂っぽいものが好き"]
    let items5 = ["近くのものを見る時、ピントがあいにくい","パソコンや新聞などで目を酷使している","小さな文字をストレスに感じるようになった","目の使い過ぎで肩・首筋が凝っている"]
    let items6 = ["毎日スッキリ目覚められる","睡眠時間が十分にとれている","日中集中して物事に取り組める"]
    let items7 = ["お米、パスタ、パンなど炭水化物を食事で取りすぎている傾向にある","汗をかいてそのまま放置することが多い","睡眠時間が短いと感じている","便秘がちである","食事の回数や時間が日によってバラバラである"]
    let items8 = ["歩いたり階段を登る際、スムーズに移動できる"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //items3の内容を性別に応じて変更
        if (SettingViewController.datas["sex"] != nil) {
            if (SettingViewController.datas["sex"]!.inputVal == 0) {
                //男の時は女性外す
                items3.remove(at: (items3.index(of: "クレアチニン（女性）")!))
            } else {
                //女の時は男性外す
                items3.remove(at: (items3.index(of: "クレアチニン（男性）")!))
            }
        }
    
        //再生するaudioファイルのパスを作成
        let audioPath = Bundle.main.path(forResource:"decision4",ofType:"mp3")!
        let audioUrl = URL(fileURLWithPath:audioPath)
        
        //audioを再生するプレイヤーを再生する
        var audioError:NSError?
        do{
            audioPlayer = try AVAudioPlayer(contentsOf:audioUrl)
        }catch let error as NSError{
            audioError = error
            audioPlayer = nil
        }
        
        //エラーが起きた時
        if let error = audioError{
            print("Error\(error.localizedDescription)")
        }
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // Section数
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return continent.count
    }
    // Sectionのタイトル
    func tableView(_ tableView: UITableView,
                   titleForHeaderInSection section: Int) -> String? {
        return continent[section]
    }
    // セルの個数を指定するデリゲートメソッド(必須)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return items1.count
            
        } else if section == 1 {
            return items2.count
            
        }else if section == 2 {
            return items3.count
        
        }else if section == 3 {
            return items4.count
        
        }else if section == 4{
            return items5.count
        
        }else if section == 5{
            return items6.count
        
        }else if section == 6{
            return items7.count
            
        }else if section == 7{
            return items8.count
        
        } else {
            return 0
            
        }
        
    }
    // セルに値を設定するデータソースメソッド(必須)
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得する
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier:"Cell", for: indexPath)
        if indexPath.section == 0 {
            // セルに表示する値を設定する
            cell.textLabel!.text = items1[indexPath.row]
            
        } else if indexPath.section == 1 {
            // セルに表示する値を設定する
            cell.textLabel!.text = items2[indexPath.row]
            
        } else if indexPath.section == 2 {
            cell.textLabel!.text = items3[indexPath.row]
        
        } else if indexPath.section == 3 {
            cell.textLabel!.text = items4[indexPath.row]
        
        } else if indexPath.section == 4{
            cell.textLabel!.text = items5[indexPath.row]
        
        } else if indexPath.section == 5{
            cell.textLabel!.text = items6[indexPath.row]
        
        } else if indexPath.section == 6{
            cell.textLabel!.text = items7[indexPath.row]
            
        } else if indexPath.section == 7{
            cell.textLabel!.text = items8[indexPath.row]
        
        }
        return cell
        
    }
    /// セルが選択された時に呼ばれるデリゲートメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath) {
        
        //print("セル番号:\(indexPath.row) セルの内容:\(items[indexPath.row])")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //設定データオブジェクト用意
        let data = ValueData()
        
        //設定項目行が押された時
        if let indexPath = self.tableView.indexPathForSelectedRow {
            if indexPath.section == 0 {
                let item = items1[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
                
            } else if indexPath.section == 1 {
                let item = items2[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
            } else if indexPath.section == 2 {
                let item = items3[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
            } else if indexPath.section == 3 {
                let item = items4[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
            } else if indexPath.section == 4 {
                let item = items5[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
            } else if indexPath.section == 5 {
                let item = items6[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

                
            } else if indexPath.section == 6 {
                let item = items7[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }

            }else if indexPath.section == 7 {
                let item = items8[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
                //設定データオブジェクトDictionaryから名称に対応するオブジェクトがあるかどうか確認
                if (SettingViewController.datas[item] != nil) {
                    //存在するとき入力画面Viewに渡す
                    controller.data = SettingViewController.datas[item]
                    
                }else{
                    //存在しないとき空の設定データオブジェクトを入れる
                    controller.data = data
                    //設定データオブジェクト新規に入れる
                    SettingViewController.datas[item] = data
                }
                
            }
            
        }
        
    }
    // サーバに設定値を保存する
    static func postSetting(_ name:String,_ val:ValueData) {
        let idfv = UIDevice.current.identifierForVendor?.uuidString
        
        var text = "https://lloapp.herokuapp.com/setting?uid="
            + idfv!.description
            + "&name=" + name
            + "&val=" + val.inputVal.description
            + "&fval=" + val.inputSliderVal.description
            + "&text=" + (val.inputText=="" ? "-" : val.inputText) + ""
        text = text.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)!
        let url = URL(string: text)
        
        let request = URLRequest(url: url!)
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            if error == nil, let data = data, let response = response as? HTTPURLResponse {
                // HTTPヘッダの取得
                print("Content-Type: \(response.allHeaderFields["Content-Type"] ?? "")")
                // HTTPステータスコード
                print("statusCode: \(response.statusCode)")
                print(String(data: data, encoding: String.Encoding.utf8) ?? "")
            }
            }.resume()
        
    }
    // 設定値をサーバから取得
    static func getSetting() {
        let idfv = UIDevice.current.identifierForVendor?.uuidString
        let url = URL(string: "https://lloapp.herokuapp.com/setting/"
            + idfv!.description)!
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let decoder: JSONDecoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(formatter)
        var settingList: [SettingData]!
        do {
            let data = try Data(contentsOf: url, options: [])
            settingList = try decoder.decode([SettingData].self, from: data)
            //print(settingList)
        } catch {
            print(error)
        }
        if (settingList != nil) {
            for s in settingList! {
                print(s)
                let data = ValueData()
                data.inputVal = s.val
                data.inputSliderVal = s.fval
                data.inputText = s.text
                datas[s.name] = data
            }
        }
    }

}

