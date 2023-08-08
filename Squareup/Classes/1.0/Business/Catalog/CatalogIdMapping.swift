//
//  CatalogIdMapping.swift
//  
//
//  Created by user on 5.06.23.
//

import Foundation

/// - CatalogIdMapping: A mapping between a temporary client-supplied ID and a permanent server-generated ID.
/// When calling UpsertCatalogObject or BatchUpsertCatalogObjects to create a CatalogObject instance, you can supply a temporary ID for the to-be-created object, especially when the object is to be referenced elsewhere in the same request body. This temporary ID can be any string unique within the call, but must be prefixed by "#".
/// After the request is submitted and the object created, a permanent server-generated ID is assigned to the new object. The permanent ID is unique across the Square catalog.
/// https://developer.squareup.com/reference/square/objects/CatalogIdMapping
open class CatalogIdMapping: Codable {
    
    /// - ClientObjectId: The client-supplied temporary #-prefixed ID for a new CatalogObject.
    var ClientObjectId: String?
    /// - ObjectId: The permanent ID for the CatalogObject created by the server.
    var ObjectId: String?
    
    enum CodingKeys: String, CodingKey {
        case ClientObjectId = "client_object_id"
        case ObjectId = "object_id"
    }
}
