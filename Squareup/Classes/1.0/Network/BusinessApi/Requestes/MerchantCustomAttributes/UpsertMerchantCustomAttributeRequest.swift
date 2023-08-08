//
//  UpsertMerchantCustomAttributeRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

internal class UpsertMerchantCustomAttributeRequest: Codable {
    
    /// - customAttribute: The custom attribute to create or update, with the following fields:
    /// value. This value must conform to the schema specified by the definition. For more information, see Supported data types.
    /// The version field must match the current version of the custom attribute definition to enable optimistic concurrency If this is not important for your application, version can be set to -1. For any other values, the request fails with a BAD_REQUEST error.
    var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
