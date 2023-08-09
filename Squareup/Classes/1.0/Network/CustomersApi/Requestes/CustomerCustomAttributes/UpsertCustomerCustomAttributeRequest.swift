//
//  UpsertCustomerCustomAttributeRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.08.23.
//

import Foundation

open class UpsertCustomerCustomAttributeRequest: Codable {
    
    /// - customAttribute: The custom attribute to create or update, with the following fields:
    ///
    /// value. This value must conform to the schema specified by the definition. For more information, see Value data types.
    /// version. To enable optimistic concurrency control for an update operation, include this optional field and specify the current version of the custom attribute.
    public var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
