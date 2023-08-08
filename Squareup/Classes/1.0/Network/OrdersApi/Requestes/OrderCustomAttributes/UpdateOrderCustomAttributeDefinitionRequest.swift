//
//  UpdateOrderCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 4.07.23.
//

import Foundation

open class UpdateOrderCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition that contains the fields to update. This endpoint supports sparse updates, so only new or changed fields need to be included in the request. For more information, see Updatable definition fields.
    /// To enable optimistic concurrency control, include the optional version field and specify the current version of the custom attribute definition.
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
