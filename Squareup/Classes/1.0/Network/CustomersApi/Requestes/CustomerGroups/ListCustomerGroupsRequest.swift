//
//  ListCustomerGroupsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 5.05.23.
//

import Foundation

open class ListCustomerGroupsRequest: Codable {
    
    /// - Cursor: A pagination cursor returned by a previous call to this endpoint. Provide this cursor to retrieve the next set of results for your original query.
    /// For more information, see Pagination.
    public var Cursor: String?
    /// - Limit: The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results. If the limit is less than 1 or greater than 50, Square returns a 400 VALUE_TOO_LOW or 400 VALUE_TOO_HIGH error. The default value is 50.
    /// For more information, see Pagination.
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
