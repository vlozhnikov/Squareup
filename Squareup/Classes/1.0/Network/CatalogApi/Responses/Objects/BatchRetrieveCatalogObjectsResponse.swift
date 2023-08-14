//
//  BatchRetrieveCatalogObjectsResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class BatchRetrieveCatalogObjectsResponse: SquareupResponse {
    
    /// - Objects: A list of CatalogObjects returned.
    public var Objects: [CatalogObject]?
    /// - RelatedObjects: A list of CatalogObjects referenced by the object in the objects field.
    public var RelatedObjects: [CatalogObject]?
    
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
