//
//  UpsertOrderCustomAttributeRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class UpsertOrderCustomAttributeRequest: Codable {
    
    /// - customAttribute: The custom attribute to create or update, with the following fields:
    /// value. This value must conform to the schema specified by the definition. For more information, see Value data types.
    /// version. To enable optimistic concurrency control, include this optional field and specify the current version of the custom attribute.
    public var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
