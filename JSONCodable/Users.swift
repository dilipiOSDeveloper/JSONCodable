//
//  City.swift
//  JSONCodable
//
//  Created by SARA Technologies  on 21/06/20.
//  Copyright © 2020 SARA Technologies Pvt. Ltd. All rights reserved.
//

import Foundation


struct Users : Codable {
    
    var id = ""
    var employee_name = ""
    var employeeAge = ""
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case employee_name
        case employeeAge = "employee_age"
    }
    
    init(from decoder:Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.employee_name = try container.decode(String.self, forKey: .employee_name)
        self.employeeAge = try container.decode(String.self, forKey: .employeeAge)
    }
}
