//
//  SearchCatalogObjectsResponse.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

open class SearchCatalogObjectsResponse: SquareupResponse {
    
    var Cursor: String?
    var Objects: [CatalogObject]?
    var RelatedObjects: [CatalogObject]?
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
