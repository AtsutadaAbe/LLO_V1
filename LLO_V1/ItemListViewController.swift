//
//  ItemListViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/31.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var parser: XMLParser!
    var items = [Item]()
    var item:Item?
    var currentString = ""
    
    @IBOutlet weak var image: UIImageView!
    // ここで受け取る
    var sendText:String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        print("cell" + indexPath.row.description)
        return cell
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        //商品一覧データを作る
        if(sendText == "SegueHead"){
            items = [
                Item(title:"〈味の素〉グリナ（30本入り）",link:"https://askul.c.yimg.jp/img/product/3L1/3435370_3L1.jpg",price:7128),
                Item(title:"〈日本ガーリック株式会社〉グリシン200g（200g）",link:"",price:1680),
                Item(title:"〈カレルチャペック紅茶〉ハーブティー（２缶セット）",link:"",price:2700),
                Item(title:"〈西川寝具〉AiR（シングル14×97×195cm）",link:"",price:61560),
                Item(title:"〈西川寝具〉AiR（ハード14×97×195cm）",link:"",price:61560),
                Item(title:"〈トゥルースリーパー〉セブンスピロー",link:"",price:15984),
                Item(title:"〈イタリア・ファべ社〉メディカル枕",link:"",price:10584),
                Item(title:"〈めぐリズム〉蒸気でホッとアイマスク　カモミールジンジャー（14枚入り）",link:"",price:369),
                Item(title:"〈ワコール〉パジャマ　睡眠科学（ピンク）",link:"",price:14040),
                Item(title:"〈ワコール〉パジャマ　睡眠科学（アイボリー）",link:"",price:14040),
                Item(title:"〈ワコール〉パジャマ　睡眠科学（ネイビー）",link:"",price:14040),
                Item(title:"〈デイリーディライト〉ブレンドエッセンシャルオイル　夜用リラック（10ml）",link:"",price:1296),
                Item(title:"〈日本香堂〉anmingピローミスト（100ml）",link:"",price:786)
            ]
        }else if(sendText == "SegueStomach"){
        items = [
            Item(title:"〈網走産〉砂出ししじみ",link:"",price:4514),
            Item(title:"〈宍道湖産〉大粒大和しじみ",link:"",price:3780),
            Item(title:"〈米子中浦〉宍道湖しじみ（大粒）個食詰合せ",link:"",price:3240),
            Item(title:"無農薬ぶなしめじ（100g）",link:"",price:340),
            Item(title:"〈新潟産〉舞茸（約700g）",link:"",price:1980),
            Item(title:"無農薬無化学肥料　えのき茸",link:"",price:340),
            Item(title:"〈CHESCO〉チーズギフト（イルドフランス　カマンベール・ジェラールクリーミィウォッシュ・グラナ　パダーノ・ナッツ＆フルーツ・レッドチェダー　ニュージーランド　５種）",link:"",price:4320),
            Item(title:"〈ハウスウェルネスフーズ〉ウコンの力　レバープラス粒タイプ箱（10個）",link:"",price:1327),
            Item(title:"〈DHC〉濃縮ウコン（30日分）",link:"",price:788),
            Item(title:"〈カゴメ〉スルフォラファン（93粒）",link:"",price:4100)
        ]
        }else if(sendText == "SegueLeg"){
            items = [
                Item(title:"〈大正製薬〉大正グルコサミンパワープラス（30日分）",link:"",price:5400),
                Item(title:"〈ワコール〉CW-Xパーツ（サポーター）",link:"",price:1940),
                Item(title:"〈ミズノ〉バレーボール膝サポーター",link:"",price:1188),
                Item(title:"〈洛中高岡屋〉おじゃみ座布団",link:"",price:5400),
                Item(title:"高級金らん正座椅子",link:"",price:3240)
            ]
        }

        
        print("商品一覧表示："+sendText)
        //部位に対応したイメージ画像を表示する
        if (sendText == "SegueHead") {
            image.image = UIImage(named:"body_icon01_nou.png")
        }else if(sendText == "SegueStomach"){
            image.image = UIImage(named:"body_icon04_i.png")
        }else if(sendText == "SegueLeg"){
            image.image = UIImage(named:"tsume_foot.png")
        }
        
        //startDownload()
        
    }
    
//    func startDownload(){
//        print("スタートダウンロード開始")
//        self.items = []
//        if let url = URL( string: "https://books.rakuten.co.jp/ranking/hourly/001/rss"){
//            if let parser = XMLParser(contentsOf: url) {
//                self.parser = parser
//                self.parser.delegate = self
//                self.parser.parse()
//                print("url表示OK")
//            }
//        }
//    }
//
//    func parser(_ parser:XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes atributeDict: [String : String]){
//
//        self.currentString = ""
//        if elementName == "item" {
//            self.item = Item()
//        }
//    }
//
//    func parser(_ parser: XMLParser, foundCharacters string: String){
//        self.currentString += string
//    }
//
//    func parser(_ parser: XMLParser,didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?){
//        print("parser :"+elementName)
//        switch elementName {
//        case "title": self.item?.title = currentString
//        case "link": self.item?.link = currentString
//        case "item": self.items.append(self.item!)
//            print("item OK")
//        default : break
//        }
//    }
    
    func parserDidEndDocument(_ parser: XMLParser){
        self.tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let item = items[indexPath.row]
            let controller = segue.destination as! ItemViewController
            controller.title = item.title
            controller.itemName = item.title
            controller.itemPrice = item.price
            controller.link = item.link

            
        }
    }
}
