//
//  RetrieveInventoryCountRequest.swift
//  Squareup
//
//  Created by user on 8.06.23.
//

import Foundation

internal class RetrieveInventoryCountRequest: Codable {
    
    /// - LocationIds: The Location IDs to look up as a comma-separated list. An empty list queries all locations.
    var LocationIds: [String]?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case Cursor = "cursor"
    }
}
