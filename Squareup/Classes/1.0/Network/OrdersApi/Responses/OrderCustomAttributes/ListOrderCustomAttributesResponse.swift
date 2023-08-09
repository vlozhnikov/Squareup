//
//  ListOrderCustomAttributesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class ListOrderCustomAttributesResponse: SquareupResponse {
    
    /// - CustomAttributes: The retrieved custom attributes. If no custom attribute are found, Square returns an empty object ({}).
    public var CustomAttributes: [CustomAttribute]?
    /// - Cursor: The cursor to provide in your next call to this endpoint to retrieve the next page of results for your original request. This field is present only if the request succeeded and additional results are available. For more information, see Pagination.
    /// Min Length 1
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
