//
//  UpsertCatalogObjectRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 3.05.23.
//

import Foundation

open class UpsertCatalogObjectRequest: Codable {
    
    /// - IdempotencyKey: A value you specify that uniquely identifies this request among all your requests. A common way to create a valid idempotency key is to use a Universally unique identifier (UUID).
    /// If you're unsure whether a particular request was successful, you can reattempt it with the same idempotency key without worrying about creating duplicate objects.
    /// See Idempotency for more information.
    /// Min Length 1
    public var IdempotencyKey: String?
    /// - Object: A CatalogObject to be created or updated.
    /// For updates, the object must be active (the is_deleted field is not true).
    /// For creates, the object ID must start with #. The provided ID is replaced with a server-generated ID.
    public var Object: CatalogObject?
    
    enum CodingKeys: String, CodingKey {
        case IdempotencyKey = "idempotency_key"
        case Object = "object"
    }
}
