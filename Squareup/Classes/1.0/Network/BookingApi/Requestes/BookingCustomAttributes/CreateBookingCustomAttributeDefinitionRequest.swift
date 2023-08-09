//
//  CreateBookingCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 27.06.23.
//

import Foundation

internal class CreateBookingCustomAttributeDefinitionRequest: Codable {
    
    /// - CustomAttributeDefinition: The custom attribute definition to create, with the following fields:
    /// key
    /// name. If provided, name must be unique (case-sensitive) across all visible booking-related custom attribute definitions for the seller.
    /// description
    /// visibility. Note that all custom attributes are visible in exported booking data, including those set to VISIBILITY_HIDDEN.
    /// schema. With the exception of the Selection data type, the schema is specified as a simple URL to the JSON schema definition hosted on the Square CDN. For more information, see Specifying the schema.
    var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
