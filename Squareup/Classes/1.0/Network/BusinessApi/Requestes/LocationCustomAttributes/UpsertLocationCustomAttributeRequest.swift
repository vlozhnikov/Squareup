//
//  UpsertLocationCustomAttributeRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class UpsertLocationCustomAttributeRequest: Codable {
    
    /// - customAttribute: The custom attribute to create or update, with the following fields:
    ///
    /// value. This value must conform to the schema specified by the definition. For more information, see Supported data types.
    /// version. To enable optimistic concurrency control for an update operation, include the current version of the custom attribute. If this is not important for your application, version can be set to -1.
    var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
