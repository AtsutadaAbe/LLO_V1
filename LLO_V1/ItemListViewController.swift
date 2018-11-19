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
        
        let url = URL(string: "https://lloapp.herokuapp.com/list")!
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"   // "2017-08-12T01:30:53.000-07:00"
        let decoder: JSONDecoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(formatter)
        var itemList: [ItemData]!
        do {
            let data = try Data(contentsOf: url, options: [])
            itemList = try decoder.decode([ItemData].self, from: data)
            print(items)
        } catch {
            print(error)
        }
        
        //商品一覧データを作る
        if(sendText == "SegueHead"){
            items = []
            for item in itemList {
                if item.body == "head"{
                    let i = Item(title:item.item_name,link:item.url,price:item.price)
                    items.insert(i, at: 0)
                }
            }
        }else if(sendText == "SegueStomach"){
            items = []
            for item in itemList {
                if item.body == "stomach"{
                    let i = Item(title:item.item_name,link:item.url,price:item.price)
                    items.insert(i, at: 0)
                }
            }
        }else if(sendText == "SegueLeg"){
            items = []
            for item in itemList {
                if item.body == "leg"{
                    let i = Item(title:item.item_name,link:item.url,price:item.price)
                    items.insert(i, at: 0)
                }
            }
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
