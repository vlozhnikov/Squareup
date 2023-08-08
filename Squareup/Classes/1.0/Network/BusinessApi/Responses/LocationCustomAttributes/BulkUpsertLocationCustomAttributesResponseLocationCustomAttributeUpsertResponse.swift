//
//  BulkUpsertLocationCustomAttributesResponseLocationCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

open class BulkUpsertLocationCustomAttributesResponseLocationCustomAttributeUpsertResponse: SquareupResponse {
    
    /// - LocationId: The ID of the location associated with the custom attribute.
    public var LocationId: String?
    /// - customAttribute: The new or updated custom attribute.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case customAttribute = "custom_attribute"
    }
}
