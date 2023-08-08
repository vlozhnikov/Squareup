//
//  ListMerchantCustomAttributeDefinitionsRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class ListMerchantCustomAttributeDefinitionsRequest: Codable {
    
    /// - visibilityFilter: Filters the CustomAttributeDefinition results by their visibility values.
    public var visibilityFilter: VisibilityFilter?
    /// - Limit: The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see Pagination.
    public var Limit: Int?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case visibilityFilter = "visibility_filter"
        case Limit = "limit"
        case Cursor = "cursor"
    }
}
