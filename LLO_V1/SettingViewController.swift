//
//  SettingViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/16.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit
class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBAction func save(_ sender: UIBarButtonItem) {
        //更新ボタンが押された時
        self.navigationController!.popToRootViewController(animated: true)
    }
    @IBOutlet weak var tableView: UITableView!
    // セクション
    let continent = ["血中濃度", "肝機能","腎臓","糖尿病","目","熟睡度","美肌"]
    // セクション内の項目
    let items1 = ["HDLコレステロール","LDLコレステロール","中性脂肪"]
    let items2 = ["AST","ALT","r-GTP","お酒を飲む回数"]
    let items3 = ["クレアチン（男性）","クレアチン（女性）","eGFR","蛋白"]
    let items4 = ["空腹時血糖","HbA1c","お酒を飲む回数","脂っぽいものが好き"]
    let items5 = ["近くのものを見る時、ピントがあいにくい","パソコンや新聞などで目を酷使している","小さな文字をストレスに感じるようになった","目の使い過ぎで肩・首筋が凝っている"]
    let items6 = ["毎日スッキリ目覚められる","睡眠時間が短いと感じている","日中の集中力が低下していると感じる"]
    let items7 = ["お米、パスタ、パンなど炭水化物を食事で取りすぎている傾向にある","汗をかいてそのまま放置することが多い","睡眠時間が短いと感じている","便秘がちである","食事の回数や時間が日によってバラバラである"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
        
        }
        return cell
        
    }
    /// セルが選択された時に呼ばれるデリゲートメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath : IndexPath) {
        
        //print("セル番号:\(indexPath.row) セルの内容:\(items[indexPath.row])")
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        //設定項目行が押された時
        if let indexPath = self.tableView.indexPathForSelectedRow {
            if indexPath.section == 0 {
                let item = items1[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
            } else if indexPath.section == 1 {
                let item = items2[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            } else if indexPath.section == 2 {
                let item = items3[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            } else if indexPath.section == 3 {
                let item = items4[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            } else if indexPath.section == 4 {
                let item = items5[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            } else if indexPath.section == 5 {
                let item = items6[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            } else if indexPath.section == 6 {
                let item = items7[indexPath.row]
                let controller = segue.destination as! InputValueViewController
                controller.itemName = item
                
            }
            
        }
        
    }
}

