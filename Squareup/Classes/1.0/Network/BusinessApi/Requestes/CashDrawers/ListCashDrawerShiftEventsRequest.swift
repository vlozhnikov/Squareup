//
//  ListCashDrawerShiftEventsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class ListCashDrawerShiftEventsRequest: Codable {
    
    /// - LocationId: The ID of the location to list cash drawer shifts for.
    public var LocationId: String?
    /// - Limit: Number of resources to be returned in a page of results (200 by default, 1000 max).
    public var Limit: Int?
    /// - Cursor: Opaque cursor for fetching the next page of results.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
