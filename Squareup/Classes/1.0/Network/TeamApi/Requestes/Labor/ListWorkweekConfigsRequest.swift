//
//  ListWorkweekConfigsRequest.swift
//  Squareup
//
//  Created by user on 4.08.23.
//

import Foundation

open class ListWorkweekConfigsRequest: Codable {
    
    /// - Limit: The maximum number of WorkweekConfigs results to return per page.
    public var Limit: Int?
    /// - Cursor: A pointer to the next page of WorkweekConfig results to fetch.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
