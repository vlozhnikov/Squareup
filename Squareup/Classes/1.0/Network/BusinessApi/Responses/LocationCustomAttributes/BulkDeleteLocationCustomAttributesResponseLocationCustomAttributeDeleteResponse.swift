//
//  BulkDeleteLocationCustomAttributesResponseLocationCustomAttributeDeleteResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class BulkDeleteLocationCustomAttributesResponseLocationCustomAttributeDeleteResponse: SquareupResponse {
    
    /// - LocationId: The ID of the location associated with the custom attribute.
    var LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
    }
}
