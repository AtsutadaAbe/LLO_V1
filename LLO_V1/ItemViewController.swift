//
//  ItemViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/09.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit
import Foundation
import WebKit

class ItemViewController: UIViewController {
    var itemName:String!
    var itemPrice:Int!
    var link:String!
    var desc:String!
    var maker:String!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var labelMaker: UILabel!
    @IBOutlet weak var textDesc: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.numberOfLines = 0;
       
        //数字の3桁カンマ
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = Locale(identifier: "ja_JP")
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        formatter.maximumFractionDigits = 0
        // 小数点なし
        formatter.roundingMode = .floor// 小数点切り捨て
        //商品価格
        labelPrice.text = formatter.string(from: NSNumber(value:itemPrice))! + "円(税込)"
        
        //商品名
        label.text = itemName
        
        labelMaker.text = maker
        textDesc.text = desc
        
        // Web表示
        if let url = URL(string: link) {
            let req = URLRequest(url:url)
            self.webView.load(req) }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
