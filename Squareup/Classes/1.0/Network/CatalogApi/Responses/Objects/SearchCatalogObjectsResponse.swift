//
//  SearchCatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class SearchCatalogObjectsResponse: SquareupResponse {
    
    /// - Cursor: The pagination cursor to be used in a subsequent request. If unset, this is the final response. See Pagination for more information.
    var Cursor: String?
    /// - Objects: The CatalogObjects returned.
    var Objects: [CatalogObject]?
    /// - RelatedObjects: A list of CatalogObjects referenced by the objects in the objects field.
    var RelatedObjects: [CatalogObject]?
    /// - LatestTime: When the associated product catalog was last updated. Will match the value for end_time or cursor if either field is included in the SearchCatalog request.
    var LatestTime: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Objects = "objects"
        case RelatedObjects = "related_objects"
        case LatestTime = "latest_time"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.Objects = try container.decodeIfPresent([CatalogObject].self, forKey: .Objects)
        self.RelatedObjects = try container.decodeIfPresent([CatalogObject].self, forKey: .RelatedObjects)
        self.LatestTime = try container.decodeIfPresent(String.self, forKey: .LatestTime)
    }
}
