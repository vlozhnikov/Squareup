//
//  BatchRetrieveCatalogObjectsResponse.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

open class BatchRetrieveCatalogObjectsResponse: SquareupResponse {
    
    var Objects: [CatalogObject]?
    var RelatedObjects = [CatalogObject]()
    
    enum CodingKeys: String, CodingKey {
        case Objects = "objects"
        case RelatedObjects = "related_objects"
    }
}
