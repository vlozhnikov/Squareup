//
//  BatchRetrieveCatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class BatchRetrieveCatalogObjectsResponse: SquareupResponse {
    
    var Objects: [CatalogObject]?
    var RelatedObjects: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Objects = "objects"
        case RelatedObjects = "related_objects"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Objects = try container.decodeIfPresent([CatalogObject].self, forKey: .Objects)
        self.RelatedObjects = try container.decodeIfPresent([CatalogObject].self, forKey: .RelatedObjects)
    }
}
