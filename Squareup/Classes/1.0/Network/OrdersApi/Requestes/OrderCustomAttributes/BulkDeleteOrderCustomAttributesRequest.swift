//
//  BulkDeleteOrderCustomAttributesRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

/// - BulkDeleteOrderCustomAttributesRequest: Represents a bulk delete request for one or more order custom attributes.
/// https://developer.squareup.com/reference/square/objects/BulkDeleteOrderCustomAttributesRequest
open class BulkDeleteOrderCustomAttributesRequest: Codable {
    
    /// - Values: A map of requests that correspond to individual delete operations for custom attributes.
    public var Values: [String: BulkDeleteOrderCustomAttributesRequestDeleteCustomAttribute]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
