//
//  CreateMerchantCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class CreateMerchantCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition to create. Note the following:
    /// With the exception of the Selection data type, the schema is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see Supported data types.
    /// name is required unless visibility is set to VISIBILITY_HIDDEN.
    public var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
