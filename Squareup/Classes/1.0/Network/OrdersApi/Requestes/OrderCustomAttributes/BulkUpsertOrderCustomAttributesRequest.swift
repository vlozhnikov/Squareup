//
//  BulkUpsertOrderCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class BulkUpsertOrderCustomAttributesRequest: Codable {
    
    /// - Values: A map of requests that correspond to individual upsert operations for custom attributes.
    public var Values: [String: BulkUpsertOrderCustomAttributesRequestUpsertCustomAttribute]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
