//
//  BulkDeleteLocationCustomAttributesResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class BulkDeleteLocationCustomAttributesResponse: SquareupResponse {
    
    /// - Values: A map of responses that correspond to individual delete requests. Each response has the same key as the corresponding request.
    var Values: [String: BulkDeleteLocationCustomAttributesResponseLocationCustomAttributeDeleteResponse]?
    
    enum CodingKeys: String, CodingKey {
        case Values = "values"
    }
}
