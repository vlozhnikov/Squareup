//
//  BulkUpsertLocationCustomAttributesRequestLocationCustomAttributeUpsertRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 30.06.23.
//

import Foundation

open class BulkUpsertLocationCustomAttributesRequestLocationCustomAttributeUpsertRequest: Codable {
    
    /// - LocationId: The ID of the target location.
    /// Min Length 1
    public var LocationId: String?
    /// - customAttribute: The custom attribute to create or update, with following fields:
    ///
    /// key. This key must match the key of a custom attribute definition in the Square seller account. If the requesting application is not the definition owner, you must provide the qualified key.
    /// value. This value must conform to the schema specified by the definition. For more information, see Supported data types..
    /// version. To enable optimistic concurrency control, specify the current version of the custom attribute. If this is not important for your application, version can be set to -1.
    public var customAttribute: CustomAttribute?
    /// - IdempotencyKey: A unique identifier for this individual upsert request, used to ensure idempotency. For more information, see Idempotency.
    /// Max Length 45
    public var IdempotencyKey: String?
    
    enum CodingKeys: String, CodingKey {
        case LocationId = "location_id"
        case customAttribute = "custom_attribute"
        case IdempotencyKey = "idempotency_key"
    }
}
