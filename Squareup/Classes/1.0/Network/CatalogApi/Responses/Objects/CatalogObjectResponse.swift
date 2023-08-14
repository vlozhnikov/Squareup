//
//  CatalogObjectResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.05.23.
//

import Foundation

open class CatalogObjectResponse: SquareupResponse {
    
    /// - catalogObject: The successfully created or updated CatalogObject.
    public var catalogObject: CatalogObject?
    /// - IdMappings: The mapping between client and server IDs for this upsert.
    public var IdMappings: [CatalogIdMapping]?
    
    enum CodingKeys: String, CodingKey {
        case catalogObject = "catalog_object"
        case IdMappings = "id_mappings"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.catalogObject = try container.decodeIfPresent(CatalogObject.self, forKey: .catalogObject)
        self.IdMappings = try container.decodeIfPresent([CatalogIdMapping].self, forKey: .IdMappings)
    }
}
