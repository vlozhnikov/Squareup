//
//  CreateOrderCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class CreateOrderCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition to create. Note the following:
    /// With the exception of the Selection data type, the schema is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see Specifying the schema.
    /// If provided, name must be unique (case-sensitive) across all visible customer-related custom attribute definitions for the seller.
    /// All custom attributes are visible in exported customer data, including those set to VISIBILITY_HIDDEN
    public var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Min Length 1
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
