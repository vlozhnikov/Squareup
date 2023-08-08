//
//  CreateCustomerGroupResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class CreateCustomerGroupResponse: SquareupResponse {
    
    public var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case Group = "group"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Group = try container.decodeIfPresent(CustomerGroup.self, forKey: .Group)
    }
}
