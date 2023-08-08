//
//  CatalogObjectReference.swift
//  
//
//  Created by user on 5.06.23.
//

import Foundation

/// - CatalogObjectReference: A reference to a Catalog object at a specific version.
/// In general this is used as an entry point into a graph of catalog objects, where the objects exist at a specific version.
/// https://developer.squareup.com/reference/square/objects/CatalogObjectReference
open class CatalogObjectReference: Codable {
    
    /// - ObjectId: The ID of the referenced object.
    var ObjectId: String?
    /// - CatalogVersion: The version of the object.
    var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case ObjectId = "object_id"
        case CatalogVersion = "catalog_version"
    }
}
