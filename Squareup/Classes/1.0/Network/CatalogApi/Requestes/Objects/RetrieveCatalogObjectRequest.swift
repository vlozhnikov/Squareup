//
//  RetrieveCatalogObjectRequest.swift
//  Business Calendar
//
//  Created by user on 4.05.23.
//

import Foundation

internal class RetrieveCatalogObjectRequest: Codable {
    
    var IncludeRelatedObjects: Bool?
    var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case IncludeRelatedObjects = "include_related_objects"
        case CatalogVersion = "catalog_version"
    }
}
