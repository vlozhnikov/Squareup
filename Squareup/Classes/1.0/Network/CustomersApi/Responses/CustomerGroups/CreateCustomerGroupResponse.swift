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
}
