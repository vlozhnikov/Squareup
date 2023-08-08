//
//  BulkDeleteOrderCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class BulkDeleteOrderCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same ID as the corresponding request and contains either a custom_attribute or an errors field.
    public var Values: [String: DeleteOrderCustomAttributeResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Values = try container.decodeIfPresent([String: DeleteOrderCustomAttributeResponse].self, forKey: .Values)
    }
}
