//
//  ListPrderCustomAttributeDefinitionsRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

internal class ListPrderCustomAttributeDefinitionsRequest: Codable {
    
    /// - visibilityFilter: Requests that all of the custom attributes be returned, or only those that are read-only or read-write.
    var visibilityFilter: VisibilityFilter?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    var Cursor: String?
    /// - Limit: The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see Pagination.
    var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case visibilityFilter = "visibility_filter"
        case Cursor = "cursor"
        case Limit = "limit"
    }
}
