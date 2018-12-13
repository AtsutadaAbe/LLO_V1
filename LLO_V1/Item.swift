//
//  Item.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/07/31.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import Foundation

class Item {
    //商品名
    var title = ""
    //商品詳細のリンク
    var link = ""
    //価格
    var price = 0
    
    var description = ""
    
    var maker = ""
    
    init(title:String, link:String, price:Int, maker:String, description:String) {
        self.title = title
        self.link = link
        self.price = price
        self.maker = maker
        self.description = description
    
    }
}

