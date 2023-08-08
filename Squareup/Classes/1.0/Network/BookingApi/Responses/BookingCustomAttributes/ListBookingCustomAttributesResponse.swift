//
//  ListBookingCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class ListBookingCustomAttributes: SquareupResponse {
    
    /// - CustomAttributes: The retrieved custom attributes. If with_definitions was set to true in the request, the custom attribute definition is returned in the definition field of each custom attribute.
    /// If no custom attributes are found, Square returns an empty object ({}).
    var CustomAttributes: [CustomAttribute]?
    /// - Cursor: The cursor to use in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomAttributes = "custom_attributes"
        case Cursor = "cursor"
    }
}
