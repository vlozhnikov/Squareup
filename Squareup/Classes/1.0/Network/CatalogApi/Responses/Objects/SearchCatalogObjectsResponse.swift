//
//  SearchCatalogObjectsResponse.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

open class SearchCatalogObjectsResponse: SquareupResponse {
    
    var Cursor: String?
    var Objects = [CatalogObject]()
    var RelatedObjects = [CatalogObject]()
    var LatestTime: String?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Objects = "objects"
        case RelatedObjects = "related_objects"
        case LatestTime = "latest_time"
    }
}
