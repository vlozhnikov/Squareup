//
//  CatalogObjectResponse.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 2.05.23.
//

import Foundation

open class CatalogObjectResponse: SquareupResponse {
    
    var Object: CatalogObject?
    var IdMappings: [CatalogIdMapping]?
    
    enum CodingKeys: String, CodingKey {
        case Object = "catalog_object"
        case IdMappings = "id_mappings"
    }
    
    required public init(from decoder: Decoder) throws {
        
        try super.init(from: decoder)

        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        self.Object = try container.decodeIfPresent(CatalogObject.self, forKey: .Object)
        self.IdMappings = try container.decodeIfPresent([CatalogIdMapping].self, forKey: .IdMappings)
    }
}
