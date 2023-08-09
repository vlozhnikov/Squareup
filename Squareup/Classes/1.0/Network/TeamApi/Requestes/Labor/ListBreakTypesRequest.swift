//
//  ListBreakTypesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.08.23.
//

import Foundation

open class ListBreakTypesRequest: Codable {
    
    /// - LocationId: Filter the returned BreakType results to only those that are associated with the specified location.
    public var LocationId: String?
    /// - Limit: The maximum number of BreakType results to return per page. The number can range between 1 and 200. The default is 200.
    public var Limit: Int?
    /// - Cursor: A pointer to the next page of BreakType results to fetch.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
