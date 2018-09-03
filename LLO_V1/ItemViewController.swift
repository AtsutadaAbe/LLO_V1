//
//  ItemViewController.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/08/09.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import UIKit
import Foundation

class ItemViewController: UIViewController {
    var itemName:String!
    var itemPrice:Int!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var labelPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.numberOfLines = 0;
       
//        //数字の３桁カンマ
//        var formatter = NumberFormatter()
//        formatter.numberStyle = .currency
//        formatter.groupingSeparator = ","
//        formatter.groupingSize = 3
        
        //商品名
        label.text = itemName
        //商品価格
        //labelPrice.text = formatter.stringFromNumber(Number(itemPrice)) + "円（税込）"
        labelPrice.text = itemPrice.description + "円（税込）"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
