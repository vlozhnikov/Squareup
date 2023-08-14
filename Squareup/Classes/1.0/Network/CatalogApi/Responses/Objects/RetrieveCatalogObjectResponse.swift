//
//  RetrieveCatalogObjectResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class RetrieveCatalogObjectResponse: SquareupResponse {
    
    /// - Object: The CatalogObjects returned.
    public var Object: CatalogObject?
    /// - RelatedObjects: A list of CatalogObjects referenced by the object in the object field.
    public var RelatedObjects: [CatalogObject]?
    
    enum CodingKeys: String, CodingKey {
        case Object = "object"
        case RelatedObjects = "related_objects"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Object = try container.decodeIfPresent(CatalogObject.self, forKey: .Object)
        self.RelatedObjects = try container.decodeIfPresent([CatalogObject].self, forKey: .RelatedObjects)
    }
}
