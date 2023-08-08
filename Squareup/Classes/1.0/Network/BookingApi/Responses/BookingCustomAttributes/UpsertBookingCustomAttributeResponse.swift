//
//  UpsertBookingCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

open class UpsertBookingCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The new or updated custom attribute.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
}
