//
//  SearchCatalogObjectsRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class SearchCatalogObjectsRequest: Codable {
    
    public var Cursor: String?
    public var ObjectTypes: [CatalogObjectType]?
    public var IncludeDeletedObjects: Bool?
    public var IncludeRelatedObjects: Bool?
    @FormattedDate<RFC3339_Strategy> public var BeginTime: Date?
    public var Query: CatalogQuery?
    public var Limit: Int?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case ObjectTypes = "object_types"
        case IncludeDeletedObjects = "include_deleted_objects"
        case IncludeRelatedObjects = "include_related_objects"
        case BeginTime = "begin_time"
        case Query = "query"
        case Limit = "limit"
    }
}
