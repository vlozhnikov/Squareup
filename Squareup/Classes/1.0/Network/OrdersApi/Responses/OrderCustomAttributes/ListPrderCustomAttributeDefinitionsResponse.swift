//
//  ListPrderCustomAttributeDefinitionsResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class ListPrderCustomAttributeDefinitionsResponse: SquareupResponse {
    
    /// - CustomAttributeDefinitions: The retrieved custom attribute definitions. If no custom attribute definitions are found, Square returns an empty object ({}).
    public var CustomAttributeDefinitions: [CustomAttributeDefinition]?
    /// - Cursor: The cursor to provide in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    /// Min Length 1
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomAttributeDefinitions = "custom_attribute_definitions"
        case Cursor = "cursor"
    }
}
