//
//  BulkUpsertOrderCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

internal class BulkUpsertOrderCustomAttributesRequest: Codable {
    
    /// - Values: A map of requests that correspond to individual upsert operations for custom attributes.
    var Values: [String: BulkUpsertOrderCustomAttributesRequestUpsertCustomAttribute]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
