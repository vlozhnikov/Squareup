//
//  BatchRetrieveCatalogObjectsRequest.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

internal class BatchRetrieveCatalogObjectsRequest: Codable {
    
    var ObjectIds: [String]?
    var IncludeRelatedObjects: Bool?
    var CatalogVersion: Int?
    var IncludeDeletedObjects: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
        case IncludeRelatedObjects = "include_related_objects"
        case CatalogVersion = "catalog_version"
        case IncludeDeletedObjects = "include_deleted_objects"
    }
}
