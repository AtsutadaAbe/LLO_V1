//
//  ItemListViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/31.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit

class ItemListViewController: UITableViewController, XMLParserDelegate {
    var parser: XMLParser!
    var items = [Item]()
    var item:Item?
    var currentString = ""
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].title
        print("cell" + indexPath.row.description)
        return cell
        
    }
    
    override func viewDidLoad(){
        super.viewDidLoad()
        startDownload()
    }
    
    func startDownload(){
        print("スタートダウンロード開始")
        self.items = []
        if let url = URL( string: "https://www.apple.com/jp/newsroom/rss-feed.rss"){
            if let parser = XMLParser(contentsOf: url) {
                self.parser = parser
                self.parser.delegate = self
                self.parser.parse()
                print("url表示OK")
            }
        }
    }
    
    func parser(_ parser:XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes atributeDict: [String : String]){
        
        self.currentString = ""
        if elementName == "entry" {
            self.item = Item()
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String){
        self.currentString += string
    }
    
    func parser(_ parser: XMLParser,didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?){
        
        switch elementName {
        case "title": self.item?.title = currentString
        case "id": self.item?.link = currentString
        case "entry": self.items.append(self.item!)
        default : break
        }
    }
    
    func parserDidEndDocument(_ parser: XMLParser){
        self.tableView.reloadData()
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
//        if let indexPath = self.tableView.indexPathForSelectedRow {
//            let item = items[indexPath.row]
//            let controller = segue.destination as! DetailViewController
//            controller.title = item.title
//            controller.link = item.link
//        }
//    }
}