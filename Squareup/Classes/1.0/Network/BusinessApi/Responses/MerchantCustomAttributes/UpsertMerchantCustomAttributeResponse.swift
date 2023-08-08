//
//  UpsertMerchantCustomAttributeResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class UpsertMerchantCustomAttributeResponse: SquareupResponse {
    
    /// - customAttribute: The new or updated custom attribute.
    var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
    }
}
