//
//  ListCustomerGroupsRequest.swift
//  Business Calendar
//
//  Created by user on 5.05.23.
//

import Foundation

internal class ListCustomerGroupsRequest: Codable {
    var Cursor: String?
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
