//
//  ListOrderCustomAttributesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class ListOrderCustomAttributesRequest: Codable {
    
    /// - visibilityFilter: Requests that all of the custom attributes be returned, or only those that are read-only or read-write.
    public var visibilityFilter: VisibilityFilter?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    public var Cursor: String?
    /// - Limit: The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see Pagination.
    public var Limit: Int?
    /// - WithDefinitions: Indicates whether to return the custom attribute definition in the definition field of each custom attribute. Set this parameter to true to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is false.
    public var WithDefinitions: Bool?
    
    enum CodingKeys: String, CodingKey {
        case visibilityFilter = "visibility_filter"
        case Cursor = "cursor"
        case Limit = "limit"
        case WithDefinitions = "with_definitions"
    }
}
