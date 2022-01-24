//
//  TokenModel.swift
//  LFP-Project-MVVMpattern
//
//  Created by MacBook on 24.01.22.
//

import Foundation

struct Token: Codable {
    
    enum CodingKeys: String, CodingKey {
        case token
        case id = "user_id"
    }
    let token: String
    let id: Int
}
