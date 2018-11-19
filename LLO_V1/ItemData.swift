//
//  ItemData.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/11/19.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import Foundation

struct ItemData: Codable {
    let id: Int
    let item_code: String
    let item_name: String
    let maker_name: String
    let price: Int
    let description: String
    let url: String
    let body: String
//    let created_at: Date
//    let updated_at: Date
}

