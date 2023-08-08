//
//  ListInvoicesRequest.swift
//  Squareup
//
//  Created by user on 17.06.23.
//

import Foundation

open class ListInvoicesRequest: Codable {
    
    /// - LocationId: The ID of the location for which to list invoices.
    public var LocationId: String?
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.
    /// For more information, see Pagination.
    public var Cursor: String?
    /// - Limit: The maximum number of invoices to return (200 is the maximum limit). If not provided, the server uses a default limit of 100 invoices.
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
