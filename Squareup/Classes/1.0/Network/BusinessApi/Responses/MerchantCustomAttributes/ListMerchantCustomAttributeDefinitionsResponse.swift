//
//  ListMerchantCustomAttributeDefinitionsResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class ListMerchantCustomAttributeDefinitionsResponse: SquareupResponse {
    
    /// - CustomAttributeDefinitions: The retrieved custom attribute definitions. If no custom attribute definitions are found, Square returns an empty object ({}).
    public var CustomAttributeDefinitions: [CustomAttributeDefinition]?
    /// - Cursor: The cursor to provide in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomAttributeDefinitions = "custom_attribute_definitions"
        case Cursor = "cursor"
    }
}
