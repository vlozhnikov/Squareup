//
//  CreateLocationCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 30.06.23.
//

import Foundation

internal class CreateLocationCustomAttributeDefinitionRequest: Codable {
    
    /// - CustomAttributeDefinition: The custom attribute definition to create. Note the following:
    /// With the exception of the Selection data type, the schema is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, including supported values and constraints, see Supported data types.
    /// name is required unless visibility is set to VISIBILITY_HIDDEN.
    var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
