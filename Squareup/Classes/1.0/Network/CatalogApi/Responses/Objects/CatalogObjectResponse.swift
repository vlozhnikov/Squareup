//
//  CatalogObjectResponse.swift
//  Business Calendar
//
//  Created by user on 2.05.23.
//

import Foundation

open class CatalogObjectResponse: SquareupResponse {
    
    var Object: CatalogObject?
    var IdMappings = [CatalogIdMapping]()
    
    enum CodingKeys: String, CodingKey {
        case Object = "catalog_object"
        case IdMappings = "id_mappings"
    }
}
