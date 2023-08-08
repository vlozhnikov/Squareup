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
    var RelatedObjects: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Cursor = "cursor"
        case Object = "object"
        case RelatedObjects = "related_objects"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Cursor = try container.decodeIfPresent(String.self, forKey: .Cursor)
        self.Object = try container.decodeIfPresent(CatalogObject.self, forKey: .Object)
        self.RelatedObjects = try container.decodeIfPresent([CatalogObject].self, forKey: .RelatedObjects)
    }
}
