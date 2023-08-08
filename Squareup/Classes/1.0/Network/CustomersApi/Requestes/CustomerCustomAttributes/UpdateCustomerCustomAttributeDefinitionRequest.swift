//
//  UpdateCustomerCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 2.08.23.
//

import Foundation

open class UpdateCustomerCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition that contains the fields to update. This endpoint supports sparse updates, so only new or changed fields need to be included in the request. Only the following fields can be updated:
    ///
    /// name
    /// description
    /// visibility
    /// schema for a Selection data type. Only changes to the named options or the maximum number of allowed selections are supported.
    ///
    /// For more information, see Updatable definition fields.
    /// To enable optimistic concurrency control, include the optional version field and specify the current version of the custom attribute definition.
    public var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
