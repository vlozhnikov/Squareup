//
//  UpsertCustomerCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class UpsertCustomerCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The new or updated custom attribute.
    var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
}
