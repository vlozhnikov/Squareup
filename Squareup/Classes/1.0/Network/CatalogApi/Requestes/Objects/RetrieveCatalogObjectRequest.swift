//
//  RetrieveCatalogObjectRequest.swift
//  Squareup
//
//  Created by Vladimir Lozhnikov on 4.05.23.
//

import Foundation

open class RetrieveCatalogObjectRequest: Codable {
    
    public var IncludeRelatedObjects: Bool?
    public var CatalogVersion: Int?
    
    enum CodingKeys: String, CodingKey {
        case IncludeRelatedObjects = "include_related_objects"
        case CatalogVersion = "catalog_version"
    }
}
