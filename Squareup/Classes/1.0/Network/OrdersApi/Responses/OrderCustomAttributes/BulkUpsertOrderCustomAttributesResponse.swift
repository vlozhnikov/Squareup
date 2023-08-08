//
//  BulkUpsertOrderCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class BulkUpsertOrderCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual upsert operations for custom attributes.
    var Values: [String: UpsertOrderCustomAttributeResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
