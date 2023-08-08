//
//  CatalogV1Id.swift
//  Business Calendar
//
//  Created by user on 29.04.23.
//

import Foundation

/// - CatalogV1Id: A Square API V1 identifier of an item, including the object ID and its associated location ID.
/// https://developer.squareup.com/reference/square/objects/CatalogV1Id
open class CatalogV1Id: Codable {
    
    /// - CatalogV1Id: The ID for an object used in the Square API V1, if the object ID differs from the Square API V2 object ID.
    let CatalogV1Id: String?
    /// - LocationId: The ID of the Location this Connect V1 ID is associated with.
    let LocationId: String?
    
    enum CodingKeys: String, CodingKey {
        case CatalogV1Id = "catalog_v1_id"
        case LocationId = "location_id"
    }
}
