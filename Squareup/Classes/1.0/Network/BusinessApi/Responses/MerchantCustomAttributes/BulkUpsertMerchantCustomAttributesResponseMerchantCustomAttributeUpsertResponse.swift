//
//  BulkUpsertMerchantCustomAttributesResponseMerchantCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 28.06.23.
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
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.MerchantId = try container.decodeIfPresent(String.self, forKey: .MerchantId)
        self.customAttribute = try container.decodeIfPresent(CustomAttribute.self, forKey: .customAttribute)
    }
}
