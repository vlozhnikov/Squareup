//
//  UpdateBookingCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 27.06.23.
//

import Foundation

internal class UpdateBookingCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition that contains the fields to update. Only the following fields can be updated:
    ///
    /// name
    /// description
    /// visibility
    /// schema for a Selection data type. Only changes to the named options or the maximum number of allowed selections are supported.
    ///
    /// For more information, see Updatable definition fields.
    /// To enable optimistic concurrency control, include the optional version field and specify the current version of the custom attribute definition.
    var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
