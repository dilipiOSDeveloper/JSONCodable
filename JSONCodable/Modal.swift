//
//  Modal.swift
//  JSONCodable
//
//  Created by SARA Technologies  on 21/06/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import Foundation

struct Response: Codable {
    
    var status = ""
    var user:[Users]?
    
    enum CodingKeys:String, CodingKey {
        case status
        case user = "data"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.status = try container.decode(String.self, forKey: .status)
        self.user = try container.decode([Users].self, forKey: .user)
    }
}
