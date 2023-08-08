//
//  ListLocationCustomAttributeDefinitionsRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class ListLocationCustomAttributeDefinitionsRequest: Codable {
    
    /// - VisibilityFilter: Filters the CustomAttributeDefinition results by their visibility values.
    var VisibilityFilter: VisibilityFilter?
    /// - Limit: The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see Pagination.
    var Limit: Int?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case VisibilityFilter = "visibility_filter"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
