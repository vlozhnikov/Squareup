//
//  BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.08.23.
//

import Foundation

/// - BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse: Represents a response for an individual upsert request in a BulkUpsertCustomerCustomAttributes operation.
open class BulkUpsertCustomerCustomAttributesResponseCustomerCustomAttributeUpsertResponse: SquareupResponse {
    
    /// - CustomerId: The ID of the customer profile associated with the custom attribute.
    public var CustomerId: String?
    /// - customAttribute: TThe new or updated custom attribute.
    public var customAttribute: CustomAttribute?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
        case customAttribute = "custom_attribute"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.CustomerId = try container.decodeIfPresent(String.self, forKey: .CustomerId)
        self.customAttribute = try container.decodeIfPresent(CustomAttribute.self, forKey: .customAttribute)
    }
}
