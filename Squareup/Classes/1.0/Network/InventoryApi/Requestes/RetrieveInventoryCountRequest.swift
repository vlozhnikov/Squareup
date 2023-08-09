//
//  RetrieveInventoryCountRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 8.06.23.
//

import Foundation

open class RetrieveInventoryCountRequest: Codable {
    
    /// - LocationIds: The Location IDs to look up as a comma-separated list. An empty list queries all locations.
    public var LocationIds: [String]?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this to retrieve the next set of results for the original query.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationIds = "location_ids"
        case Cursor = "cursor"
    }
}
