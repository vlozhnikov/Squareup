//
//  UpdateCustomerGroupResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class UpdateCustomerGroupResponse: SquareupResponse {
    
    /// - Group: The successfully updated customer group.
    public var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case Group = "group"
    }
}
