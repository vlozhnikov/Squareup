//
//  ListBookingCustomAttributesRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

internal class ListBookingCustomAttributesRequest: Codable {
    
    /// - Limit: The maximum number of results to return in a single paged response. This limit is advisory. The response might contain more or fewer results. The minimum value is 1 and the maximum value is 100. The default value is 20. For more information, see Pagination.
    var Limit: Int?
    /// - Cursor: The cursor returned in the paged response from the previous call to this endpoint. Provide this cursor to retrieve the next page of results for your original request. For more information, see Pagination.
    var Cursor: String?
    /// - WithDefinitions: Indicates whether to return the custom attribute definition in the definition field of each custom attribute. Set this parameter to true to get the name and description of each custom attribute, information about the data type, or other definition details. The default value is false.
    var WithDefinitions: Bool?
    
    enum CodingKeys: String, CodingKey {
        case Limit = "limit"
        case Cursor = "cursor"
        case WithDefinitions = "with_definitions"
    }
}
