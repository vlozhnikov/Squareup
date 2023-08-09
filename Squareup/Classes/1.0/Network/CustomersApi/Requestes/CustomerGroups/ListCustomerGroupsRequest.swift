//
//  ListCustomerGroupsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class ListCustomerGroupsRequest: Codable {
    
    public var Cursor: String?
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
