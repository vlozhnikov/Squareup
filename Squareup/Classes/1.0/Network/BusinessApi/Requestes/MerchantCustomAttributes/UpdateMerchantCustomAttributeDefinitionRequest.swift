//
//  UpdateMerchantCustomAttributeDefinitionRequest.swift
//  Squareup
//
//  Created by user on 28.06.23.
//

import Foundation

open class UpdateMerchantCustomAttributeDefinitionRequest: Codable {
    
    /// - customAttributeDefinition: The custom attribute definition that contains the fields to update. This endpoint supports sparse updates, so only new or changed fields need to be included in the request. Only the following fields can be updated:
    ///
    /// name
    /// description
    /// visibility
    ///
    /// schema for a Selection data type. Only changes to the named options or the maximum number of allowed selections are supported. For more information, see Update a merchant custom attribute definition. The version field must match the current version of the custom attribute definition to enable optimistic concurrency If this is not important for your application, version can be set to -1. For any other values, the request fails with a BAD_REQUEST error.
    public var customAttributeDefinition: CustomAttributeDefinition?
    /// - IdempotencyKey: A unique identifier for this request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case customAttributeDefinition = "custom_attribute_definition"
        case IdempotencyKey = "idempotency_key"
    }
}
