//
//  BatchDeleteCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 1.06.23.
//

import Foundation

open class BatchDeleteCatalogObjectsRequest: Codable {
    
    /// - ObjectIds: The IDs of the CatalogObjects to be deleted. When an object is deleted, other objects in the graph that depend on that object will be deleted as well (for example, deleting a CatalogItem will delete its CatalogItemVariation.
    public var ObjectIds: [String]?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
    }
}
