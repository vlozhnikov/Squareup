//
//  BulkUpsertCustomerCustomAttributesRequestCustomerCustomAttributeUpsertRequest.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

/// - BulkUpsertCustomerCustomAttributesRequestCustomerCustomAttributeUpsertRequest: Represents an individual upsert request in a BulkUpsertCustomerCustomAttributes request.
/// An individual request contains a customer ID, the custom attribute to create or update, and an optional idempotency key.
open class BulkUpsertCustomerCustomAttributesRequestCustomerCustomAttributeUpsertRequest: Codable {
    
    /// - CustomerId: The ID of the target customer profile.
    /// Min Length 1
    public var CustomerId: String?
    /// - customAttribute: The custom attribute to create or update, with following fields:
    ///
    /// key. This key must match the key of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must provide the qualified key.
    /// value. This value must conform to the schema specified by the definition. For more information, see Value data types.
    /// version. To enable optimistic concurrency control for update operations, include this optional field in the request and set the value to the current version of the custom attribute.
    public var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this individual upsert request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length  45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case CustomerId = "customer_id"
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
