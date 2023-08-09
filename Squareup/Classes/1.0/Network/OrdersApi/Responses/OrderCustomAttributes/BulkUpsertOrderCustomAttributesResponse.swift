//
//  BulkUpsertOrderCustomAttributesResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.07.23.
//

import Foundation

open class BulkUpsertOrderCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual upsert operations for custom attributes.
    public var Values: [String: UpsertOrderCustomAttributeResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.Values = try container.decodeIfPresent([String: UpsertOrderCustomAttributeResponse].self, forKey: .Values)
    }
}
