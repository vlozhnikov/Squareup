//
//  ListLocationCustomAttributesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class ListLocationCustomAttributesResponse: SquareupResponse {
    
    /// - CustomAttributes: The retrieved custom attributes. If with_definitions was set to true in the request, the custom attribute definition is returned in the definition field of each custom attribute. If no custom attributes are found, Square returns an empty object ({}).
    public var CustomAttributes: [CustomAttribute]?
    /// - Cursor: The cursor to use in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    public var Cursor: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomAttributes = "custom_attributes"
        case Cursor = "cursor"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.CustomAttributes = try container.decodeIfPresent([CustomAttribute].self, forKey: .CustomAttributes)
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
    }
}
