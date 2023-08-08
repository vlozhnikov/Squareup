//
//  BulkUpsertMerchantCustomAttributesResponseMerchantCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class BulkUpsertMerchantCustomAttributesResponseMerchantCustomAttributeUpsertResponse: SquareupResponse {
    
    /// - MerchantId: The ID of the merchant associated with the custom attribute.
    public var MerchantId: String?
    /// - customAttribute: The new or updated custom attribute.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case MerchantId = "merchant_id"
        case customAttribute = "custom_attribute"
    }
}
