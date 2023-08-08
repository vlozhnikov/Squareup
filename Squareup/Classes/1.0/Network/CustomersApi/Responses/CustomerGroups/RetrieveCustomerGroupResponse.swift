//
//  RetrieveCustomerGroupResponse.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

open class RetrieveCustomerGroupResponse: SquareupResponse {
    
    /// - Group: The retrieved customer group.
    var Group: CustomerGroup?
    
    enum CodingKeys: String, CodingKey {
        case Group = "group"
    }
}
