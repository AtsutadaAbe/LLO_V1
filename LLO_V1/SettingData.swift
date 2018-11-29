//
//  SettingData.swift
//  LLO_V1
//
//  Created by 阿部敦忠 on 2018/11/29.
//  Copyright © 2018年 阿部敦忠. All rights reserved.
//

import Foundation
struct SettingData: Codable {
    let id: Int
    let uid: String
    let name: String
    let val: Int
    let fval: Float
    let text: String
    let created_at: Date
    let updated_at: Date
}
