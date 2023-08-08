//
//  RetrieveCatalogObjectResponse.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

open class RetrieveCatalogObjectResponse: SquareupResponse {
    
    var Cursor: String?
    var Object: CatalogObject?
    var RelatedObjects = [CatalogObject]()
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Object = "object"
        case RelatedObjects = "related_objects"
    }
}
