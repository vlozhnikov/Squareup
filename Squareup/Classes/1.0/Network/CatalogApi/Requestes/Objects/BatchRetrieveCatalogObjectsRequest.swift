//
//  BatchRetrieveCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class BatchRetrieveCatalogObjectsRequest: Codable {
    
    public var ObjectIds: [String]?
    public var IncludeRelatedObjects: Bool?
    public var CatalogVersion: Int?
    public var IncludeDeletedObjects: Bool?
    
    enum CodingKeys: String, CodingKey {
        case ObjectIds = "object_ids"
        case IncludeRelatedObjects = "include_related_objects"
        case CatalogVersion = "catalog_version"
        case IncludeDeletedObjects = "include_deleted_objects"
    }
}
